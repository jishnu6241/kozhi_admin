import 'package:flutter/material.dart';
import 'package:kozhi_admin/common_widget/custom_dashboard_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomDashboardCard(
              label: 'Orders',
              count: '45111',
              icon: Icons.border_all,
            ),
            CustomDashboardCard(
              label: 'On Progress',
              count: '45111',
              icon: Icons.work_history_outlined,
            ),
            CustomDashboardCard(
              label: 'Ready to Delivey',
              count: '45111',
              icon: Icons.check_circle_outline,
            ),
            CustomDashboardCard(
              label: 'Total Income',
              count: '45111',
              icon: Icons.paid_outlined,
            ),
          ],
        ),
      ],
    );
  }
}
