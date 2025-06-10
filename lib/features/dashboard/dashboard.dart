import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Wrap(
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        spacing: 20,
        runSpacing: 20,
        children: const [
          CustomDashboardCard(label: 'Orders', count: '45111', icon: Icons.border_all),
          CustomDashboardCard(label: 'On Progress', count: '45111', icon: Icons.work_history_outlined),
          CustomDashboardCard(label: 'Ready to Delivery', count: '45111', icon: Icons.check_circle_outline),
          CustomDashboardCard(label: 'Total Income', count: '45111', icon: Icons.paid_outlined),
        ],
      ),
    );
  }
}

class CustomDashboardCard extends StatelessWidget {
  final String label;
  final String count;
  final IconData icon;

  const CustomDashboardCard({required this.label, required this.count, required this.icon, super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: 349),
      child: Material(
        color: Theme.of(context).colorScheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Theme.of(context).colorScheme.outline, width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    count,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Material(
                color: Theme.of(context).colorScheme.onSecondary,
                borderRadius: BorderRadius.circular(8),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Icon(icon, color: Theme.of(context).colorScheme.secondary),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
