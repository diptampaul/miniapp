import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  const Loader({Key? key}) : super(key: key);

  @override
  State<Loader> createState() => _LoaderState();
}

class _LoaderState extends State<Loader> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> animation_rotation;
  late Animation<double> animation_rotate_in;
  late Animation<double> animation_rotate_out;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Dot extends StatelessWidget {
  final double radius;
  final double color;

  Dot({required this.color, required this.radius});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.radius,
      height: this.radius,

      // decoration: ,
    );
  }
}

