
import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override

  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: const Color(0xFFE8F0FE),
                borderRadius: BorderRadius.circular(40),
              ),
              child: const Icon(
                Icons.people_outline_rounded,
                size: 40,
                color: Color(0xFF4A90D9),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'ຍັງບໍ່ມີໝູ່ເທື່ອ',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1A1A2E),
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'ເພີ່ມໝູ່ດ້ວຍຊື່ ຫຼື ສະແກນ QR Code',
              style: TextStyle(fontSize: 13, color: Color(0xFF9CA3AF)),
            ),
          ],
        ),
      ),
    );
  }
}