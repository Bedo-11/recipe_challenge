import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ExtendedPadding on Widget {
  alignAtStart() {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: this,
    );
  }

  Widget paddingAll(double padding) => Padding(
        padding: EdgeInsets.all(padding),
        child: this,
      );

  Widget paddingHorizontally(double padding) => Padding(
        padding: EdgeInsets.symmetric(horizontal: padding),
        child: this,
      );

  Widget paddingVertically(double vertical) => Padding(
        padding: EdgeInsets.symmetric(vertical: vertical),
        child: this,
      );

  Widget paddingHorizontallyVertically(double horizontal, double vertical) =>
      Padding(
        padding:
            EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
        child: this,
      );

  alignAtEnd() {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: this,
    );
  }
}
