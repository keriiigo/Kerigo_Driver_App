import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:kerigo_driver_app/model/constant_size/constant_size.dart';
import 'package:kerigo_driver_app/view/location_permission_screen/location_permisssion_screen.dart';
import 'package:kerigo_driver_app/view/mult_ridenity/mult_ridenoty.dart';
import 'package:kerigo_driver_app/view/riderdetails/riderdetails.dart';
import 'package:kerigo_driver_app/view/widget/costom_elevated_button.dart';
import 'package:kerigo_driver_app/view/widget/custom_mediom_button.dart';

class RideNotify extends StatelessWidget {
  const RideNotify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('asset/image/mapImage.jpg'),
      )),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 35,
            ),
            child: Container(
              height: 250,
              decoration: BoxDecoration(color: Colors.white),
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
                              color: Theme.of(context).brightness ==
                                      Brightness.dark
                                  ? Colors.white
                                  : HexColor('#2D2D2D'),
                            ),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 96,
                              width: 162,
                              decoration: BoxDecoration(
                                  border: Border.all(width: .5),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          bottom: 16,
                                          left: 18,
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 10),
                                          child: Image.asset(
                                            'asset/image/money.png.png',
                                            height: 40,
                                            width: 40,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            right: 11, bottom: 10),
                                        child: Text(
                                          '₹580',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Theme.of(context)
                                                            .brightness ==
                                                        Brightness.dark
                                                    ? Colors.white
                                                    : HexColor('#2D2D2D'),
                                              ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(),
                                    child: Text(
                                      'Total earnings',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            color:
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? Colors.white
                                                    : HexColor('#2D2D2D'),
                                          ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 10),
                          child: Container(
                            height: 96,
                            width: 162,
                            decoration: BoxDecoration(
                                border: Border.all(width: .5),
                                borderRadius: BorderRadius.circular(8)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 12),
                                      child: Image.asset(
                                        'asset/image/auto.png',
                                        height: 48,
                                        width: 48,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 15,
                                      ),
                                      child: Text(
                                        '04',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 16,
                                              color: Theme.of(context)
                                                          .brightness ==
                                                      Brightness.dark
                                                  ? Colors.white
                                                  : HexColor('#2D2D2D'),
                                            ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8),
                                  child: Text(
                                    'Today’s rides',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          color: Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : HexColor('#2D2D2D'),
                                        ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 30, left: 10),
                            child: Text(
                              'New ride requests',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                    color: Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : HexColor('#2D2D2D'),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 560,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 331,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            left: BorderSide(),
                            right: BorderSide(),
                            top: BorderSide(),
                            bottom: BorderSide()),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 25, left: 35),
                              child: CircleAvatar(radius: 40),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 25.0, top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 25),
                                          child: Text(
                                            'Abhay',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24,
                                                  color: Theme.of(context)
                                                              .brightness ==
                                                          Brightness.dark
                                                      ? Colors.white
                                                      : HexColor('#2D2D2D'),
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(),
                                          child: Text(
                                            '₹300',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                  color: Theme.of(context)
                                                              .brightness ==
                                                          Brightness.dark
                                                      ? Colors.white
                                                      : HexColor('#2D2D2D'),
                                                ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      right: 25.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 25),
                                              child: Text(
                                                '5.0',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16,
                                                      color: Theme.of(context)
                                                                  .brightness ==
                                                              Brightness.dark
                                                          ? Colors.white
                                                          : HexColor('#2D2D2D'),
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Icon(
                                                Icons.star,
                                                size: 18,
                                                color: HexColor('#FFD600'),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(top: 4),
                                          child: Text(
                                            '22km',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16,
                                                  color: Theme.of(context)
                                                              .brightness ==
                                                          Brightness.dark
                                                      ? Colors.white
                                                      : HexColor('#2D2D2D'),
                                                ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 20, bottom: 10),
                                    child: Text(
                                      '+91 7342523123',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16,
                                            color:
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? Colors.white
                                                    : HexColor('#2D2D2D'),
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Container(
                            height: 96,
                            width: 343,
                            decoration: BoxDecoration(
                                border: Border.all(width: .8),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(8),
                                )),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Column(
                                    children: [
                                      Icon(Icons.my_location_sharp),
                                      Dash(
                                        direction: Axis.vertical,
                                        length: 25,
                                        dashLength: 3,
                                        dashColor: Colors.black,
                                      ),
                                      Icon(Icons.location_pin)
                                    ],
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, left: 28),
                                      child: Text('Panniyankara, Kozhikode',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Theme.of(context)
                                                            .brightness ==
                                                        Brightness.dark
                                                    ? Colors.white
                                                    : HexColor('#2D2D2D'),
                                              )),
                                    ),
                                    Expanded(
                                      child: SizedBox(
                                        width: 295,
                                        child: Divider(
                                          indent: 28,
                                          color: Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white70
                                              : HexColor('#2D2D2D'),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 28, bottom: 15),
                                      child: Text('Kozhikode, Kerala, India',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall
                                              ?.copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Theme.of(context)
                                                            .brightness ==
                                                        Brightness.dark
                                                    ? Colors.white
                                                    : HexColor('#2D2D2D'),
                                              )),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, right: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            LocationPermissionScreen(),
                                      ));
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(),
                                  child: Container(
                                      height: 48,
                                      width: 171,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: .5),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'Cancel',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                                color: Theme.of(context)
                                                            .brightness ==
                                                        Brightness.dark
                                                    ? Colors.white
                                                    : HexColor('#2D2D2D'),
                                              ),
                                        ),
                                      )),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              MediomCostomeElevatedButton(
                                text: 'Accept',
                                ontap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Riderdetails(),
                                      ));
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
