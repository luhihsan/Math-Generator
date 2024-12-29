import 'package:flutter/material.dart';
import '../utils/colorConst.dart';

class Quizbuttonicon extends StatelessWidget {
  
  const Quizbuttonicon({
    super.key,
    required this.option,
  });

  final String option;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          border: Border.all(color: baseColor, width: 2),
          borderRadius: BorderRadius.circular(20)),
      width: MediaQuery.of(context).size.width > 550
          ? 200
          : MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.width > 550
          ? 50
          : MediaQuery.of(context).size.width / 7,
      child: Center(
        child: Text(
          option,
          style: const TextStyle(color: baseColorLight, fontSize: 25),
        ),
      ),
    );
  }
}
