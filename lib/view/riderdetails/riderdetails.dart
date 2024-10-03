import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_driver_app/view/pickupdes/pickupdes.dart';
import 'package:kerigo_driver_app/view/widget/costom_elevated_button.dart';

class Riderdetails extends StatelessWidget {
  const Riderdetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/image/mapImage.jpg'),
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
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back_ios_new_rounded)),
                      Text(
                        'Ride details',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
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
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 442,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(),
                      right: BorderSide(),
                      top: BorderSide(),
                    ),
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.only(top: 25),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 25, left: 35),
                            child: CircleAvatar(radius: 45),
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
                                            padding: EdgeInsets.only(left: 25),
                                            child: Text(
                                              '5.0',
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
                                          color: Theme.of(context).brightness ==
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
                              border: Border.all(),
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
                                    padding: EdgeInsets.only(top: 10, left: 28),
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
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20, top: 25),
                                child: Text('Trip fare',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : HexColor('#2D2D2D'),
                                        )),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 20, top: 15),
                                    child: Text('Pick up charge',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                          .brightness ==
                                                      Brightness.dark
                                                  ? Colors.white
                                                  : HexColor('#2D2D2D'),
                                            )),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 45, top: 20),
                                    child: Text('30/-',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall
                                            ?.copyWith(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14,
                                              color: Theme.of(context)
                                                          .brightness ==
                                                      Brightness.dark
                                                  ? Colors.white
                                                  : HexColor('#2D2D2D'),
                                            )),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: Row(
                              children: [
                                Text('Paid charge',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : HexColor('#2D2D2D'),
                                        )),
                                Padding(
                                  padding: EdgeInsets.only(left: 65),
                                  child: Text('200/-',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14,
                                            color:
                                                Theme.of(context).brightness ==
                                                        Brightness.dark
                                                    ? Colors.white
                                                    : HexColor('#2D2D2D'),
                                          )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: CostomeElevatedButton(
                          text: 'next',
                          ontap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Pickupdes(),
                                ));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
