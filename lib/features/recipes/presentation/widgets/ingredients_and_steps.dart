import 'package:flutter/material.dart';

import '../../../../core/constants/constans.dart';

class RecipeDetailsTab extends StatefulWidget {
  final Size size;

  const RecipeDetailsTab({super.key, required this.size});
  @override
  _RecipeDetailsTabState createState() => _RecipeDetailsTabState();
}

class _RecipeDetailsTabState extends State<RecipeDetailsTab> {
  int _currentIndex = 0;

  final List<Tab> _tabs = [
    const Tab(text: 'Ingredients'),
    const Tab(text: 'Cooking Steps'),
  ];

  final List<Widget> _tabContent = [
    Column(
      children: [
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
        const Text('List of Ingredients'),
      ],
    ),
    const Text('List of Cooking Steps'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Container(
        width: widget.size.width,
        height: widget.size.height,
        child: SafeArea(
          child: Scaffold(
            appBar: MyAppBar(
              height: 50,
              tabBar: TabBar(
                tabs: _tabs,
                dividerColor: Constants.primaryColor,
                labelColor: Constants.primaryColor,
                indicatorColor: Constants.primaryColor,
                onTap: (int index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
            body: _tabContent[_currentIndex],
          ),
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;

  MyAppBar({required this.height, required this.tabBar});

  final TabBar tabBar;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      bottom: tabBar,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
