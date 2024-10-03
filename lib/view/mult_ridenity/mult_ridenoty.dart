import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_driver_app/view/widget/custom_mediom_button.dart';

class MultRidenoty extends StatelessWidget {
  const MultRidenoty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10,
              top: 35,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_ios_new_rounded)),
                    Text(
                      'Online',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : HexColor('#2D2D2D'),
                          ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
