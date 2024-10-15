import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_driver_app/view/my%20doc/my%20doc.dart';
import 'package:kerigo_driver_app/view/widget/costom_elevated_button.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
           Row(
              children: [
                
                Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10),
                  child: Text(
                    'Personal Information',
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: HexColor('#2D2D2D'),
                        ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 55,),

Padding(
  padding: const EdgeInsets.all(12.0),
  child: TextField(
    decoration: InputDecoration(
      hintText: "Name",
       hintStyle:
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: HexColor('#767676'),
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
  child: TextField(keyboardType: TextInputType.number,
    decoration: InputDecoration(
      hintText: "+91 99 48 75 69 01",
       hintStyle:
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: HexColor('#767676'),
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
      hintText: "Email",
       suffixText: '(Optional)',
        hintStyle:
                          Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: HexColor('#767676'),
                              ),
     
     
         filled: true,
      fillColor:HexColor('#DADADA'),
      
      
      
      border: OutlineInputBorder( borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide.none, ),
      
    ),
  ),
),

 Container(
                  height: 48,
                  width: double.infinity, // Make the container width responsive
                  decoration: BoxDecoration(
                    color: HexColor('#DADADA'),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  // child: TextFormField(
                  //   controller: value.genderController,
                  //   onTap: () {
                  //     showModalBottomSheet(
                  //       context: context,
                  //       builder: (context) => const DropDownAndRadio(),
                  //     );
                  //   },
                  //   readOnly: true,
                  //   keyboardType: TextInputType.text,
                  //   style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  //         fontWeight: FontWeight.w400,
                  //         fontSize: 16,
                  //         color: HexColor('#767676'),
                  //       ),
                  //   decoration: InputDecoration(
                  //     contentPadding: const EdgeInsets.all(12),
                  //     hintText: 'Gender',
                  //     suffixIcon:
                  //         const Icon(Icons.keyboard_arrow_down_outlined),
                  //     hintStyle:
                  //         Theme.of(context).textTheme.bodySmall?.copyWith(
                  //               fontWeight: FontWeight.w400,
                  //               fontSize: 16,
                  //               color: HexColor('#767676'),
                  //             ),
                  //     border: InputBorder.none,
                  //   ),
                  // ),
                ),

  
Spacer(),
      CostomeElevatedButton(text: 'Continue',
                ontap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>Mydoc(),
                      ));
                },)
            
        ],

      )),


    );
  }
}