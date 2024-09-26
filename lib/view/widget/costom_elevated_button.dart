import 'package:flutter/material.dart';
import 'package:kerigo_driver_app/model/constant_color/constant_color.dart';

class CostomeElevatedButton extends StatelessWidget {
  const CostomeElevatedButton({super.key, required this.text, this.ontap});

  final String text;
  final dynamic ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 343,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: buttonColour,
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
      ),
    );
  }
}
