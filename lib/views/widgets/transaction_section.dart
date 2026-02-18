import 'package:admin_dashboard/views/widgets/transaction_header.dart';
import 'package:flutter/material.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransactionHeader(),
      ],
    );
  }
}