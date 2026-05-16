# ShareKun API Documentation

> All REST API endpoints required for the ShareKun debt-tracking app.

---

## Base URL
```
https://api.sharekun.com/v1
```

## Auth Header (all protected routes)
```
Authorization: Bearer <access_token>
```

## Error Format
All endpoints return errors in this format:
```json
{
  "statusCode": 400,
  "message": "string",
  "error": "Bad Request"
}
```

---

## 1. Authentication

| Method | Endpoint | Auth | Description |
|--------|----------|------|-------------|
| POST | `/auth/firebase` | No | Login or register via Firebase Phone OTP |
| POST | `/auth/login` | No | Login with phone & password |
| POST | `/auth/register` | No | Register new account |
| POST | `/auth/refresh-token` | No | Refresh access token |
| POST | `/auth/forgot-password` | No | Request password reset |

### POST `/auth/firebase` ⭐ (Firebase Phone OTP)

Pass the Firebase ID token in the Authorization header — no JSON body needed.
Single endpoint for both register and login (upserts the user by phone number).

**Request**
```
Authorization: Bearer <firebase_id_token>
```
**Response `200`** — same shape as `/auth/login`

> New users: `name` defaults to phone number. Update it via `PATCH /profile`.
> Existing users: returns fresh tokens with no side effects.

---

### POST `/auth/login`
**Request**
```json
{
  "phone": "020XXXXXXXX",
  "password": "string"
}
```
**Response `200`**
```json
{
  "accessToken": "string",
  "refreshToken": "string",
  "user": {
    "id": "string",
    "name": "string",
    "phone": "string",
    "avatar": "string (URL)",
    "memberSince": "2026-02"
  }
}
```

---

### POST `/auth/register`
**Request**
```json
{
  "name": "string",
  "phone": "020XXXXXXXX",
  "password": "string"
}
```
**Response `201`** — same shape as `/auth/login`

---

### POST `/auth/refresh-token`
**Request**
```json
{ "refreshToken": "string" }
```
**Response `200`**
```json
{
  "accessToken": "string",
  "refreshToken": "string"
}
```

---

### POST `/auth/forgot-password`
**Request**
```json
{ "phone": "020XXXXXXXX" }
```
**Response `200`**
```json
{ "message": "OTP sent to your phone" }
```

---

## 2. User Profile

| Method | Endpoint | Auth | Description |
|--------|----------|------|-------------|
| GET | `/profile` | Yes | Get current user profile |
| PATCH | `/profile` | Yes | Update name and/or avatar photo |
| PATCH | `/profile/language` | Yes | Save language preference |

### GET `/profile`
**Response `200`**
```json
{
  "id": "string",
  "name": "string",
  "phone": "string",
  "avatar": "string (URL)",
  "memberSince": "2026-02",
  "language": "en | lo"
}
```

---

### PATCH `/profile`
**Request** — `multipart/form-data`
```
name:   string  (optional)
avatar: File    (optional — jpg/png)
```
**Response `200`** — updated profile object

---

### PATCH `/profile/language`
**Request**
```json
{ "language": "en | lo" }
```
**Response `200`**
```json
{ "language": "en | lo" }
```

---

## 3. Bank Accounts

| Method | Endpoint | Auth | Description |
|--------|----------|------|-------------|
| GET | `/bank-accounts` | Yes | List user's bank accounts |
| POST | `/bank-accounts` | Yes | Add new bank account |
| DELETE | `/bank-accounts/:id` | Yes | Remove a bank account |

### GET `/bank-accounts`
**Response `200`**
```json
{
  "bankAccounts": [
    {
      "id": "string",
      "bank": "BCEL | LDB",
      "accountNumber": "string",
      "holderName": "string",
      "maskedNumber": "xxxx-xxxx-1234"
    }
  ]
}
```

---

### POST `/bank-accounts`
**Request**
```json
{
  "bank": "BCEL | LDB",
  "accountNumber": "string",
  "holderName": "string"
}
```
**Response `201`**
```json
{
  "id": "string",
  "bank": "BCEL | LDB",
  "accountNumber": "string",
  "holderName": "string",
  "maskedNumber": "xxxx-xxxx-1234"
}
```

---

### DELETE `/bank-accounts/:id`
**Response `200`**
```json
{ "message": "Bank account deleted" }
```

---

## 4. Contacts

| Method | Endpoint | Auth | Description |
|--------|----------|------|-------------|
| GET | `/contacts` | Yes | List all contacts |
| POST | `/contacts` | Yes | Add new contact by name |
| GET | `/contacts/search-users` | Yes | Search registered users by name or phone |
| POST | `/contacts/by-phone` | Yes | Add contact by phone (finds registered user) |

### GET `/contacts`
**Query Params** (optional)
```
search=string
```
**Response `200`**
```json
{
  "contacts": [
    { "id": "string", "name": "string" }
  ]
}
```

---

### POST `/contacts`
**Request**
```json
{ "name": "string" }
```
**Response `201`**
```json
{ "id": "string", "name": "string" }
```

---

### GET `/contacts/search-users`

Search all registered ShareKun users by name or phone. Distinct from `GET /contacts?search=` which only searches your own contact list.

**Query Params** (required)
```
q=string   (name or phone fragment)
```
**Response `200`**
```json
{
  "users": [
    {
      "id": "string",
      "name": "string",
      "phone": "string",
      "avatar": "string (URL) | null"
    }
  ]
}
```
> Returns max 20 results. Empty `q` → `{ users: [] }`. Never includes yourself.

---

### POST `/contacts/by-phone`

Find a registered user by their phone number and add them as a contact.

**Request**
```json
{ "phone": "020XXXXXXXX" }
```
**Response `201`**
```json
{ "id": "string", "name": "string", "phone": "020XXXXXXXX" }
```
**Error `404`** — No user found with that phone number
**Error `400`** — Cannot add yourself

---

## 5. Friends

| Method | Endpoint | Auth | Description |
|--------|----------|------|-------------|
| GET | `/friends` | Yes | List friends with debt summary |

### GET `/friends`
**Query Params** (optional)
```
search=string
```
**Response `200`**
```json
{
  "friends": [
    {
      "id": "string",
      "name": "string",
      "note": "string",
      "amount": 50000,
      "debtType": "owesYou | youOwe | settled"
    }
  ]
}
```

---

## 6. Debts

| Method | Endpoint | Auth | Description |
|--------|----------|------|-------------|
| GET | `/debts` | Yes | List debts — used for home dashboard |
| POST | `/debts` | Yes | Create a new debt |
| PATCH | `/debts/:id/status` | Yes | Mark debt as paid or pending |
| DELETE | `/debts/:id` | Yes | Delete a debt |

### GET `/debts`
**Query Params** (optional)
```
type=owed|borrowed
status=paid|pending
```
**Response `200`**
```json
{
  "totalOwedToYou": 140000,
  "totalYouOwe": 50000,
  "debts": [
    {
      "id": "string",
      "contactName": "string",
      "date": "2026-02-02",
      "amount": 90000,
      "status": "paid | pending",
      "type": "owed | borrowed",
      "note": "string"
    }
  ]
}
```

---

### POST `/debts`
**Request**
```json
{
  "amount": 100000,
  "direction": "owesMe | iOwe",
  "contactIds": ["string"],
  "note": "Dinner",
  "bankAccountId": "string (required when direction = owesMe)"
}
```
> When multiple `contactIds` are provided, the amount is split equally. One debt record is created per contact.

**Response `201`**
```json
{
  "debts": [
    {
      "id": "string",
      "contactName": "string",
      "date": "2026-02-02",
      "amount": 50000,
      "status": "pending",
      "type": "owed | borrowed",
      "note": "string"
    }
  ]
}
```

---

### PATCH `/debts/:id/status`
**Request**
```json
{ "status": "paid | pending" }
```
**Response `200`** — updated debt object

---

### DELETE `/debts/:id`
**Response `200`**
```json
{ "message": "Debt deleted" }
```

---

## Data Models Summary

### User
| Field | Type | Description |
|-------|------|-------------|
| id | string | Unique user ID |
| name | string | Display name |
| phone | string | Phone number (login identifier) |
| avatar | string | Profile image URL |
| memberSince | string | Month joined (e.g. "2026-02") |
| language | string | `en` or `lo` |

### BankAccount
| Field | Type | Description |
|-------|------|-------------|
| id | string | Unique account ID |
| bank | string | `BCEL` or `LDB` |
| accountNumber | string | Full account number |
| holderName | string | Account holder name |
| maskedNumber | string | Display-safe masked number |

### Contact
| Field | Type | Description |
|-------|------|-------------|
| id | string | Unique contact ID |
| name | string | Contact display name |

### Debt
| Field | Type | Description |
|-------|------|-------------|
| id | string | Unique debt ID |
| contactName | string | Name of person involved |
| date | string | ISO date string |
| amount | double | Amount in LAK |
| status | string | `paid` or `pending` |
| type | string | `owed` (they owe you) or `borrowed` (you owe them) |
| note | string | Optional note |

### Friend (debt summary view)
| Field | Type | Description |
|-------|------|-------------|
| id | string | Contact ID |
| name | string | Friend's name |
| note | string | Latest debt note |
| amount | double | Net amount between you two |
| debtType | string | `owesYou`, `youOwe`, or `settled` |

---

## Prisma Schema

```prisma
// prisma/schema.prisma

generator client {
  provider = "prisma-client-js"
}

datasource db {
  provider = "postgresql"
  url      = env("DATABASE_URL")
}

// ─── Enums ────────────────────────────────────────────────────────────────────

enum Language {
  en
  lo
}

enum Bank {
  BCEL
  LDB
}

enum DebtDirection {
  owesMe   // contact owes the user → type "owed" on dashboard
  iOwe     // user owes the contact → type "borrowed" on dashboard
}

enum DebtStatus {
  pending
  paid
}

// ─── Models ───────────────────────────────────────────────────────────────────

model User {
  id           String        @id @default(cuid())
  name         String
  phone        String        @unique
  password     String        // bcrypt hashed
  avatar       String?       // URL to uploaded image
  language     Language      @default(en)
  createdAt    DateTime      @default(now())
  updatedAt    DateTime      @updatedAt

  bankAccounts BankAccount[]
  contacts     Contact[]
  debts        Debt[]
  refreshTokens RefreshToken[]
}

model RefreshToken {
  id        String   @id @default(cuid())
  token     String   @unique
  userId    String
  expiresAt DateTime
  createdAt DateTime @default(now())

  user      User     @relation(fields: [userId], references: [id], onDelete: Cascade)
}

model BankAccount {
  id            String   @id @default(cuid())
  bank          Bank
  accountNumber String
  holderName    String
  maskedNumber  String   // e.g. "xxxx-xxxx-1234"
  userId        String
  createdAt     DateTime @default(now())

  user          User     @relation(fields: [userId], references: [id], onDelete: Cascade)
  debts         Debt[]
}

model Contact {
  id        String   @id @default(cuid())
  name      String
  userId    String
  createdAt DateTime @default(now())

  user      User     @relation(fields: [userId], references: [id], onDelete: Cascade)
  debts     Debt[]
}

model Debt {
  id            String        @id @default(cuid())
  amount        Float         // amount per contact (total ÷ number of contacts)
  direction     DebtDirection
  status        DebtStatus    @default(pending)
  note          String?
  date          DateTime      @default(now())
  userId        String
  contactId     String
  bankAccountId String?       // required when direction = owesMe
  createdAt     DateTime      @default(now())
  updatedAt     DateTime      @updatedAt

  user          User          @relation(fields: [userId], references: [id], onDelete: Cascade)
  contact       Contact       @relation(fields: [contactId], references: [id])
  bankAccount   BankAccount?  @relation(fields: [bankAccountId], references: [id])
}
```

### Relationships at a glance
```
User ──< BankAccount   (one user, many bank accounts)
User ──< Contact       (one user, many contacts)
User ──< Debt          (one user, many debts)
User ──< RefreshToken  (one user, many refresh tokens)
Contact ──< Debt       (one contact can appear in many debts)
BankAccount ──< Debt   (one bank account linked to many debts)
```

### Notes
- **`maskedNumber`** is computed and stored on insert (e.g. last 4 digits of `accountNumber`).
- **`/friends`** endpoint is not a separate table — it is computed by grouping `Debt` records by `contactId` and summing amounts.
- **`totalOwedToYou` / `totalYouOwe`** in `GET /debts` are aggregated with `prisma.debt.aggregate()`.
- Delete on `User` cascades to all related records.

---

## 7. PhaJay Payment Integration

> Third-party payment gateway for Laos banks (BCEL, JDB, LDB, IB, STB).
> Docs: https://payment-doc.phajay.co

### 7.1 Payment Link

Generate a hosted payment page — user selects bank, scans QR, and gets redirected back.

**Endpoint:** `POST https://payment-gateway.phajay.co/v1/api/link/payment-link`

**Auth:** Basic Auth — Base64 encode your Secret Key
```
Authorization: Basic <base64(SECRET_KEY)>
Content-Type: application/json
```

**Request**
```json
{
  "orderNo": "DEBT-001",
  "amount": 50000,
  "description": "Debt payment from Ning"
}
```

| Field | Type | Required | Description |
|-------|------|----------|-------------|
| orderNo | String | No | Unique order ID (link to your `Debt.id`) |
| amount | Number | Yes | Amount in LAK |
| description | String | Yes | Payment note shown to payer |
| tag1–tag3 | String | No | Custom metadata (e.g. debtId, userId) |

**Response `200`**
```json
{
  "message": "SUCCESSFULLY",
  "redirectURL": "https://...",
  "orderNo": "DEBT-001"
}
```

**Flow:**
1. Call API → get `redirectURL`
2. Open URL in `url_launcher` (in-app webview or browser)
3. User picks bank → scans QR → payment confirmed
4. PhaJay redirects back with: `?linkCode=...&amount=...&orderNo=...`
5. Your webhook receives POST with full transaction details

**Supported banks:** BCEL, JDB, LDB, IB, STB

---

### 7.2 Payment QR (Direct)

Generate a QR code or deep-link directly for a specific bank — no hosted page.

**Base URL:** `https://portal.phajay.co/v1/api/payment`

**Auth:**
```
Content-Type: application/json
secretKey: YOUR_SECRET_KEY
```

| Endpoint | Bank |
|----------|------|
| `POST /generate-ib-qr` | IB (Internet Banking) |
| `POST /generate-bcel-qr` | BCEL |
| `POST /generate-jdb-qr` | JDB |

**Request (all 3)**
```json
{
  "amount": 50000,
  "description": "Debt payment"
}
```

**Response**
- IB → `{ "qrCode": "..." }` — render with `qr_flutter`
- BCEL/JDB → `{ "link": "..." }` or `{ "appLink": "..." }` — open with `url_launcher`

---

### 7.3 Payment Callback (Real-time)

Two ways to receive payment confirmation:

#### Method A — WebSocket (Socket.IO)
Connect once, receive instant callbacks.

```
Server: https://payment-gateway.phajay.co/
Event:  join::<SECRET_KEY>
```

**Callback payload**
```json
{
  "message": "SUCCESS",
  "status": "PAYMENT_COMPLETED",
  "paymentMethod": "BCEL",
  "transactionId": "81f8b0a6-...",
  "txnAmount": 50000,
  "txnDateTime": "23/09/2025 11:37:55"
}
```

#### Method B — Webhook (Recommended for production)
Configure your endpoint URL in PhaJay Portal → Settings → Webhook.

PhaJay will POST to your URL on every payment:

```json
{
  "paymentMethod": "BCEL",
  "transactionId": "string",
  "txnAmount": 50000,
  "status": "PAYMENT_COMPLETED",
  "refNo": "string",
  "description": "string",
  "txnDateTime": "string",
  "sourceName": "string",
  "tag1": "debtId",
  "tag2": "userId"
}
```

> Use `tag1`/`tag2` to pass your `debtId` and `userId` so you can match the payment back to the correct debt and auto-mark it as `paid`.

---

### Flutter packages for payment
```yaml
http: ^1.2.0          # REST calls to PhaJay API
socket_io_client: ^2.0.3   # Real-time WebSocket callbacks
url_launcher: ^6.2.5  # Open payment link or bank deep-link
qr_flutter: ^4.1.0    # Render QR code for IB bank
```
