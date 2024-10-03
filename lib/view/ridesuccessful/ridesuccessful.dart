import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_driver_app/model/constant_size/constant_size.dart';
import 'package:kerigo_driver_app/view/Otppage/Otp.dart';
import 'package:kerigo_driver_app/view/profile_M/profile_m.dart';
import 'package:kerigo_driver_app/view/widget/costom_elevated_button.dart';

class Ridesuccessful extends StatelessWidget {
  const Ridesuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          hight30,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 130),
                child: Text(
                  'Ride Successful',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : HexColor('#2D2D2D'),
                      ),
                ),
              ),
            ],
          ),
          hight50,
          Image.asset(
            'asset/image/geentik.png',
            height: 121,
            width: 121,
          ),
          Padding(
            padding: EdgeInsets.only(top: 70),
            child: Text(
              ' ₹ 300',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 48,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : HexColor('#2D2D2D'),
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 170),
            child: CostomeElevatedButton(
              text: 'Done',
              ontap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Otp(),
                    ));
              },
            ),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileM(),
                    ));
              },
              icon: Icon(Icons.menu))
        ],
      ),
    );
  }
}
