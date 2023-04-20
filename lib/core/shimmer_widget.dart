import 'package:flutter/material.dart';

class ShimmerList extends StatelessWidget {
  const ShimmerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.separated(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 3,
      separatorBuilder: (BuildContext context, int index) {
        return Container();
      },
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
          child: Shimmer(
            height: size.height * 0.3,
            width: size.width,
          ),
        );
      },
    );
  }
}

class Shimmer extends StatelessWidget {
  const Shimmer({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width, height;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.04),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
    );
  }
}
