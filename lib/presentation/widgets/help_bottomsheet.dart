import 'package:flutter/material.dart';

class HelpSheet extends StatelessWidget {
  const HelpSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(shape: ContinuousRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(20)))),
      
      
    );
  }
}