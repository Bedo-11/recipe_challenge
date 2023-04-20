import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/constants/constans.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({
    super.key,
    required this.size,
    required this.focusNode,
    this.onChanged,
  });

  final Size size;
  final FocusNode focusNode;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      height: size.height * 0.25,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 0,
            ),
            height: size.height * 0.25 - 27,
            decoration: const BoxDecoration(
              color: Constants.primaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            child: const HomeHeadTitle(),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: Constants.primaryColor.withOpacity(0.22),
                  )
                ],
              ),
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        focusNode: focusNode,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Constants.primaryColor),
                          contentPadding: EdgeInsets.all(10.0),
                        ),
                        onChanged: onChanged,
                      ),
                    ),
                    const Icon(
                      Icons.search_rounded,
                      color: Constants.primaryColor,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HomeHeadTitle extends StatelessWidget {
  const HomeHeadTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Text(
            "What Do You Like To Eat Today?",
            style: GoogleFonts.dynaPuff(
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
