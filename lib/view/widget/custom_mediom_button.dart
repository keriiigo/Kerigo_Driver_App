import 'package:flutter/material.dart';
import 'package:kerigo_driver_app/model/constant_color/constant_color.dart';

class MediomCostomeElevatedButton extends StatelessWidget {
  const MediomCostomeElevatedButton(
      {super.key, required this.text, this.ontap});

  final String text;
  final dynamic ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: 171,
        height: 48,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: buttonColour,
        ),
        child: Center(
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
          ),
        ),
      ),
    );
  }
}
