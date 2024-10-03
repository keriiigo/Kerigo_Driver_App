import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_driver_app/view/Otppage/Otp.dart';
import 'package:kerigo_driver_app/view/widget/costom_elevated_button.dart';

class Endpickup extends StatelessWidget {
  const Endpickup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'End Pick up',
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
      body: Column(
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/image/mapImage.jpg'),
                fit: BoxFit.fitWidth,
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 10,
                    top: 35,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container()),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 191,
              width: 5375,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(),
                  right: BorderSide(),
                  top: BorderSide(),
                ),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Pick up at',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : HexColor('#2D2D2D'),
                          ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 50, top: 15),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 6),
                          child: Icon(Icons.location_on),
                        ),
                        Text(
                          'Panniyankara, Kozhikode, Kerala',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : HexColor('#2D2D2D'),
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 45),
                    child: CostomeElevatedButton(
                      text: 'Ask for OTP',
                      ontap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Otp(),
                            ));
                      },
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
