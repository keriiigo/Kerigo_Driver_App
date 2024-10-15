import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_driver_app/view/home_page/home_page.dart';

import 'package:kerigo_driver_app/view/personal_info/personal_info.dart';
import 'package:kerigo_driver_app/view/widget/costom_elevated_button.dart';

class WrongDoc extends StatelessWidget {
  const WrongDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
           Row(
              children: [
                 IconButton(
                  icon: const Icon(Icons.arrow_back_ios_new_rounded),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    'My Document',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: HexColor('#2D2D2D'),
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40,),

Padding(
  padding: const EdgeInsets.all(12.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "Driving License",
       hintStyle:
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: HexColor('#2D2D2D'),
                              ),
       suffixIcon: Icon(Icons.check_circle_outline,
        color:  HexColor('#009106'),),
      filled: true,
      fillColor:HexColor('#DADADA'),
      

      
      border: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none, ),
      
    ),
  ),
),

Padding(
  padding: const EdgeInsets.all(12.0),
  child: TextField(keyboardType: TextInputType.number,
    decoration: InputDecoration(
      hintText: "ID Card(Voter ID/ Adhar Card)",
       suffixIcon: Icon(Icons.check_circle_outline,
        color:  HexColor('#009106'),),
        hintStyle:
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: HexColor('#2D2D2D'),
                              ),
      filled: true,
      fillColor:HexColor('#DADADA'),
      
      border: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none, ),
      
    ),
  ),
),

Padding(
  padding: const EdgeInsets.all(12.0),
  child: TextFormField(keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      hintText: "Vehicle Registration Certificate",
       hintStyle:
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: HexColor('#2D2D2D'),
                              ),
      suffixIcon: Icon(Icons.warning_amber,
       color:  HexColor('#FF0606'),),

         filled: true,
      fillColor:HexColor('#DADADA'),
      
      
      
      border: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none, ),
      
    ),
  ),
),


Padding(
  padding: const EdgeInsets.all(12.0),
  child: TextFormField(keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      hintText: "Vehicle Image",
       hintStyle:
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: HexColor('#2D2D2D'),
                              ),

      suffixIcon: Icon(Icons.warning_amber,
      color:  HexColor('#FF0606'),),
         filled: true,
      fillColor:HexColor('#DADADA'),
      
      
      
      border: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none, ),
      
    ),
  ),
),
Align(alignment: Alignment.centerLeft,
  child: Padding(
    padding: const EdgeInsets.only(left: 20),
    child: Row(
      children: [
        Icon(Icons.warning_amber,
         color: HexColor('#FF0606'),
        ),
        Text('Something went wrong. please try again or',
         style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              color: HexColor('#2D2D2D'),
                            ),
        ),
        
      ],

    ),
  )),

  Align(alignment: Alignment.centerLeft,
    child: Padding(
      padding: const EdgeInsets.only(left: 45,),
      child: Row(
        children: [
          Text('Contact',
                 style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: HexColor('#2D2D2D'),
                                    ),
                ),
                SizedBox(width:5 ,),
                 Text('support for assistance',
                 style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: HexColor('#3422F2'),
                                    ),
                ),
        ],
      ),
    ),
  ),
 

  
const Spacer(),
      CostomeElevatedButton(text: 'Continue',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>HomePage(),
                      ));
                },)
            
        ],

      )),
     
    );
  }
}