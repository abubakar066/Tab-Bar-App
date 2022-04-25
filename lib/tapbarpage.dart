import 'package:flutter/material.dart';
import 'firsttap.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter TabBar"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TabBar(
              unselectedLabelColor: Colors.blueGrey,
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Free',
                ),
                Tab(
                  text: 'Standard',
                ),
                Tab(
                  text: 'Premium',
                ),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  free(
                    user: "For Regular Users",
                    price: 0,
                    ads: "10 Ad's",
                    promo: "Not Promoted",
                    control: "Restricted Control Over Ad's",
                  ),
                  free(
                    user: "For Individual Agents",
                    price: 40,
                    ads: "100 Ad's per month",
                    promo: "Promoted",
                    control: "Full Control Over Ad's",
                  ),
                  free(
                    user: "For Real Estate Agencies",
                    price: 60,
                    ads: "200 Ad's per month",
                    promo: "Promoted",
                    control: "Full Control Over Ad's",
                  ),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
