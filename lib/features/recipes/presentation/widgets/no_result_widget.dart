import 'package:flutter/material.dart';

import '../../../../core/constants/constans.dart';

class NoResultWidget extends StatelessWidget {
  const NoResultWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/search.png'),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "No Results found",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Constants.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
