import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_driver_app/view/personal_info/personal_info.dart';
import 'package:kerigo_driver_app/view/widget/costom_elevated_button.dart';
import 'package:pinput/pinput.dart';



class Otppade extends StatelessWidget {
  const Otppade({super.key});
  

  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SingleChildScrollView(
      child: Column(
        children: [
           SizedBox(
            height: 100,
          ),
          Align(
            child: Image.asset('/Users/sidraanwar/kerigo/kerigo_driver_app/asset/image/autorunnig.png',
            width: 184,
            height: 170.98,),
          ),
          SizedBox(height: 15,),

          Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'We have sent a verification code to:',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontWeight: FontWeight.w700, fontSize: 16,color: HexColor('#2D2D2D')),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                '+91 99 47 17 17 18',
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontWeight: FontWeight.w700, fontSize: 16,color: HexColor('#2D2D2D')),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding:EdgeInsets.only(),
              child: Pinput(defaultPinTheme: PinTheme(width: 35,
              height: 35,textStyle: TextStyle(fontSize: 25),
              decoration: BoxDecoration(color: HexColor('#dadada'),
              border: Border.all(color: Colors.transparent)))),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 90,),
              child: Row(
                children: [
                  Text("Don’t receive OTP? ",
                  ),
              
                  GestureDetector(
                        onTap: () {
                          // Add functionality for resending OTP
                        },
                        child: Text(
                          'Resend OTP',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: HexColor('#3422F2'),
                              ),
                        ),
                      ),
                ],
              ),
            ),
            Text(
                'OTP expires in 30 seconds',
            ),
            SizedBox(height: 40,),
            CostomeElevatedButton(
              text: 'Varify',
              
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const PersonalInfo()));
              },
            )
                    
        ],
      ),
     ),
     
    );
  }
}