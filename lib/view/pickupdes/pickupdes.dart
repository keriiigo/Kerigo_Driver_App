import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_driver_app/view/endpickup/endpickup.dart';

class Pickupdes extends StatelessWidget {
  const Pickupdes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pick up',
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
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25, top: 30),
                child: Text('Distance 2km',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Theme.of(context).brightness == Brightness.dark
                              ? Colors.white
                              : HexColor('#2D2D2D'),
                        )),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(right: 95, top: 10),
            child: Text('Your destination is 3 min away',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : HexColor('#2D2D2D'),
                    )),
          ),
          Expanded(child: Container()),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 131,
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
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Endpickup(),
                            ));
                      },
                      icon: Icon(Icons.arrow_drop_down_circle_sharp))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
