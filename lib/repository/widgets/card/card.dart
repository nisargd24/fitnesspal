import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final double padding;
  final double height;
  final double width;
  const CustomCard({
    super.key,
    required this.child,
    this.padding = 16.0,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Colors.grey[900],
        child: Padding(padding: EdgeInsets.all(padding), child: child),
      ),
    );
  }
}
