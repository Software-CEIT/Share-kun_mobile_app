# ShareKun API — Usage Guide

> Base URL: `http://localhost:3000/v1`
> Swagger UI: `http://localhost:3000/docs`
> All protected routes require: `Authorization: Bearer <accessToken>`

---

## Token Lifecycle

| Token | Expires | Usage |
|-------|---------|-------|
| `accessToken` | 15 minutes | All protected endpoints |
| `refreshToken` | 7 days | `POST /auth/refresh-token` only |

When `accessToken` expires → call `/auth/refresh-token` to get a new pair.

---

## 1. Auth

### POST `/auth/firebase` ⭐ (Primary — Firebase Phone OTP)

Used for **both** register and login. Flutter verifies OTP via Firebase, gets an ID token, then sends it here.

```http
POST /v1/auth/firebase
Authorization: Bearer <firebase_id_token>
```

**Response `200`**
```json
{
  "accessToken": "eyJhbGci...",
  "refreshToken": "uuid-string",
  "user": {
    "id": "clxxx",
    "name": "020XXXXXXXX",
    "phone": "020XXXXXXXX",
    "avatar": null,
    "memberSince": "2026-03"
  }
}
```

> New users: `name` defaults to phone number. Update it via `PATCH /profile`.
> Existing users: just returns fresh tokens — no side effects.

---

### POST `/auth/register` (Password-based)

```http
POST /v1/auth/register
Content-Type: application/json

{
  "name": "Somchai",
  "phone": "020XXXXXXXX",
  "password": "password123"
}
```

**Response `201`** — same shape as `/auth/firebase`
**Error `409`** — phone number already registered

---

### POST `/auth/login` (Password-based)

```http
POST /v1/auth/login
Content-Type: application/json

{
  "phone": "020XXXXXXXX",
  "password": "password123"
}
```

**Response `200`** — same shape as `/auth/firebase`
**Error `401`** — invalid credentials

---

### POST `/auth/refresh-token`

Call this when `accessToken` expires. Rotates both tokens (old refresh token is deleted).

```http
POST /v1/auth/refresh-token
Content-Type: application/json

{
  "refreshToken": "uuid-string"
}
```

**Response `200`**
```json
{
  "accessToken": "eyJhbGci...",
  "refreshToken": "new-uuid-string"
}
```

**Error `401`** — token not found or expired

---

### POST `/auth/forgot-password`

```http
POST /v1/auth/forgot-password
Content-Type: application/json

{
  "phone": "020XXXXXXXX"
}
```

**Response `200`**
```json
{ "message": "OTP sent to your phone" }
```

---

## 2. Profile

All routes require `Authorization: Bearer <accessToken>`.

### GET `/profile`

```http
GET /v1/profile
Authorization: Bearer <accessToken>
```

**Response `200`**
```json
{
  "id": "clxxx",
  "name": "Somchai",
  "phone": "020XXXXXXXX",
  "avatar": "http://localhost:3000/uploads/avatars/filename.jpg",
  "memberSince": "2026-03",
  "language": "en"
}
```

---

### PATCH `/profile`

Update name and/or avatar photo. Use `multipart/form-data`.

```http
PATCH /v1/profile
Authorization: Bearer <accessToken>
Content-Type: multipart/form-data

name: Somchai Dee          (optional)
avatar: <file jpg/png>     (optional)
```

**Response `200`** — updated profile object

---

### PATCH `/profile/language`

```http
PATCH /v1/profile/language
Authorization: Bearer <accessToken>
Content-Type: application/json

{
  "language": "lo"
}
```

**Response `200`**
```json
{ "language": "lo" }
```

Accepted values: `"en"` | `"lo"`

---

## 3. Bank Accounts

### GET `/bank-accounts`

```http
GET /v1/bank-accounts
Authorization: Bearer <accessToken>
```

**Response `200`**
```json
{
  "bankAccounts": [
    {
      "id": "clxxx",
      "bank": "BCEL",
      "accountNumber": "0201234567890",
      "holderName": "Somchai Dee",
      "maskedNumber": "xxxx-xxxx-7890"
    }
  ]
}
```

---

### POST `/bank-accounts`

```http
POST /v1/bank-accounts
Authorization: Bearer <accessToken>
Content-Type: application/json

{
  "bank": "BCEL",
  "accountNumber": "0201234567890",
  "holderName": "Somchai Dee"
}
```

Accepted `bank` values: `"BCEL"` | `"LDB"`

**Response `201`** — created bank account object (same shape as list item)

---

### DELETE `/bank-accounts/:id`

```http
DELETE /v1/bank-accounts/clxxx
Authorization: Bearer <accessToken>
```

**Response `200`**
```json
{ "message": "Bank account deleted" }
```

---

## 4. Contacts

### GET `/contacts`

```http
GET /v1/contacts
Authorization: Bearer <accessToken>

# Optional search:
GET /v1/contacts?search=Ning
```

**Response `200`**
```json
{
  "contacts": [
    { "id": "clxxx", "name": "Ning" }
  ]
}
```

---

### POST `/contacts`

```http
POST /v1/contacts
Authorization: Bearer <accessToken>
Content-Type: application/json

{
  "name": "Ning"
}
```

**Response `201`**
```json
{ "id": "clxxx", "name": "Ning" }
```

---

## 5. Friends

Computed from debt records — no separate Friends table.

### GET `/friends`

```http
GET /v1/friends
Authorization: Bearer <accessToken>

# Optional search:
GET /v1/friends?search=Ning
```

**Response `200`**
```json
{
  "friends": [
    {
      "id": "clxxx",
      "name": "Ning",
      "note": "Dinner at night market",
      "amount": 50000,
      "debtType": "owesYou"
    }
  ]
}
```

`debtType` values:
| Value | Meaning |
|-------|---------|
| `owesYou` | They owe you money (net positive) |
| `youOwe` | You owe them money (net negative) |
| `settled` | Net balance is zero |

---

## 6. Debts

### GET `/debts`

```http
GET /v1/debts
Authorization: Bearer <accessToken>

# Optional filters:
GET /v1/debts?type=owed
GET /v1/debts?type=borrowed
GET /v1/debts?status=pending
GET /v1/debts?status=paid
GET /v1/debts?type=owed&status=pending
```

**Response `200`**
```json
{
  "totalOwedToYou": 140000,
  "totalYouOwe": 50000,
  "debts": [
    {
      "id": "clxxx",
      "contactName": "Ning",
      "date": "2026-03-01",
      "amount": 90000,
      "status": "pending",
      "type": "owed",
      "note": "Dinner"
    }
  ]
}
```

`type` values: `"owed"` (they owe you) | `"borrowed"` (you owe them)

> `totalOwedToYou` and `totalYouOwe` only count **pending** debts.

---

### POST `/debts`

Creates one debt record per contact. Amount is split equally.

```http
POST /v1/debts
Authorization: Bearer <accessToken>
Content-Type: application/json

{
  "amount": 100000,
  "direction": "owesMe",
  "contactIds": ["clxxx1", "clxxx2"],
  "note": "Dinner at night market",
  "bankAccountId": "clxxx3"
}
```

| Field | Required | Notes |
|-------|----------|-------|
| `amount` | Yes | Total in LAK — split equally per contact |
| `direction` | Yes | `"owesMe"` (they owe you) or `"iOwe"` (you owe them) |
| `contactIds` | Yes | Array of contact IDs (min 1) |
| `note` | No | Optional description |
| `bankAccountId` | **Required when `direction = "owesMe"`** | Your bank account for receiving payment |

**Response `201`**
```json
{
  "debts": [
    {
      "id": "clxxx",
      "contactName": "Ning",
      "date": "2026-03-01",
      "amount": 50000,
      "status": "pending",
      "type": "owed",
      "note": "Dinner at night market"
    }
  ]
}
```

> If 2 contacts and amount = 100,000 → each debt record = 50,000 LAK.

---

### PATCH `/debts/:id/status`

```http
PATCH /v1/debts/clxxx/status
Authorization: Bearer <accessToken>
Content-Type: application/json

{
  "status": "paid"
}
```

Accepted values: `"paid"` | `"pending"`

**Response `200`** — updated debt object

---

### DELETE `/debts/:id`

```http
DELETE /v1/debts/clxxx
Authorization: Bearer <accessToken>
```

**Response `200`**
```json
{ "message": "Debt deleted" }
```

---

## Error Format

All errors follow this shape:

```json
{
  "statusCode": 400,
  "message": "string",
  "error": "Bad Request"
}
```

| Code | Meaning |
|------|---------|
| `400` | Bad request / validation error |
| `401` | Unauthorized — missing or invalid token |
| `403` | Forbidden — resource belongs to another user |
| `404` | Not found |
| `409` | Conflict — e.g. phone already registered |
