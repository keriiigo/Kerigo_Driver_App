import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_driver_app/view/endpickup/endpickup.dart';
import 'package:kerigo_driver_app/view/ridelocation/ridelocation.dart';
import 'package:kerigo_driver_app/view/widget/costom_elevated_button.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Enter OTP',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : HexColor('#2D2D2D'),
              ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded)),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(),
              child: Text(
                'We send a PIN to your customer’s\nmobile number ',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : HexColor('#2D2D2D'),
                    ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 24, bottom: 185),
            child: Pinput(
              defaultPinTheme: PinTheme(
                  width: 79,
                  height: 56,
                  textStyle: TextStyle(fontSize: 25),
                  decoration: BoxDecoration(
                    color: HexColor('#DADADA'),
                    border: Border.all(color: Colors.transparent),
                  )),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 70),
              child: CostomeElevatedButton(
                text: 'Confirm',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Ridelocation(),
                      ));
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
