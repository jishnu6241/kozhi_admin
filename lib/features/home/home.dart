import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kozhi_admin/common_widget/custom_dashboard_button.dart';
import 'package:kozhi_admin/common_widget/custom_home_single_button.dart';
import 'package:kozhi_admin/common_widget/custom_search.dart';
import 'package:kozhi_admin/features/Order/order.dart';
import 'package:kozhi_admin/features/Shops/shops.dart';
import 'package:kozhi_admin/features/Users/users.dart';
import 'package:kozhi_admin/features/dashboard/dashboard.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Material(
              color: Theme.of(context).colorScheme.onPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(
                  color: Colors.white, // White border
                  width: 1, // Border thickness
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'KOZHI',
                      style: GoogleFonts.righteous(
                        textStyle: Theme.of(
                          context,
                        ).textTheme.headlineSmall!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    ),

                    SizedBox(width: 50),
                    CustomDashboardButton(
                      label: 'Dashboard',
                      onTap: () {
                        _tabController.animateTo(0);
                      },
                      isSelected: _tabController.index == 0,
                    ),

                    CustomDashboardButton(
                      label: 'Orders',
                      onTap: () {
                        _tabController.animateTo(1);
                      },
                      isSelected: _tabController.index == 1,
                    ),

                    CustomDashboardButton(
                      label: 'Users',
                      onTap: () {
                        _tabController.animateTo(2);
                      },
                      isSelected: _tabController.index == 2,
                    ),

                    CustomDashboardButton(
                      label: 'Shops',
                      onTap: () {
                        _tabController.animateTo(3);
                      },
                      isSelected: _tabController.index == 3,
                    ),
                    SizedBox(
                      width: 300,
                      child: CustomSearch(onSearch: (p0) {}),
                    ),
                    CustomHomeSingleButton(icon: Icons.message_outlined),

                    CustomHomeSingleButton(icon: Icons.report_outlined),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [Dashboard(), Order(), Users(), Shops()],
            ),
          ),
        ],
      ),
    );
  }
}
