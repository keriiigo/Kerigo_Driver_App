import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_driver_app/view/Otppage/Otp.dart';
import 'package:kerigo_driver_app/view/ridesuccessful/ridesuccessful.dart';
import 'package:kerigo_driver_app/view/widget/costom_elevated_button.dart';

class Ridelocation extends StatelessWidget {
  const Ridelocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: Text(
            'Ride ',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : HexColor('#2D2D2D'),
                ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 222,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border(
                    top: BorderSide(),
                    left: BorderSide(),
                    right: BorderSide())),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Text.rich(
                      textAlign: TextAlign.start,
                      TextSpan(children: [
                        TextSpan(
                          text: 'Distance ',
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
                        TextSpan(
                          text: '4 km \n',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : HexColor('#2D2D2D'),
                                  ),
                        ),
                        TextSpan(
                          text: 'Your destination in ',
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
                        TextSpan(
                          text: '3 min',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : HexColor('#2D2D2D'),
                                  ),
                        ),
                        TextSpan(
                          text:
                              '. away \nYour expected arrival time is around ',
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
                        TextSpan(
                          text: '3.00 pm',
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : HexColor('#2D2D2D'),
                                  ),
                        )
                      ])),
                  // Text(
                  //   'Your destination in 3 min. away \nYour expected arrival time is around 3.00 pm',
                  //   style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  //         fontWeight: FontWeight.w700,
                  //         fontSize: 16,
                  //         color: Theme.of(context).brightness == Brightness.dark
                  //             ? Colors.white
                  //             : HexColor('#2D2D2D'),
                  //       ),
                  // ),
                  SizedBox(height: 20),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: CostomeElevatedButton(
                        text: 'End Ride',
                        ontap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Ridesuccessful(),
                              ));
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    )));
    ;
  }
}
