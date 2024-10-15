import 'package:flutter/material.dart';
import 'package:kerigo_driver_app/view/loginscreen/loginscreen.dart';
import 'package:kerigo_driver_app/view/widget/costom_elevated_button.dart';

class Selectlanguage extends StatelessWidget {
  const Selectlanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'asset/image/languageimg.png',
                  height: 225,
                  width: 335,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                alignment: Alignment.topCenter,
                height: 309,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black, // Change the color as needed
                        width: .5, // Change the width as needed
                      ),
                      right: BorderSide(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black, // Change the color as needed
                        width: .5, // Change the width as needed
                      ),
                      top: BorderSide(
                        color: Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black, // Change the color as needed
                        width: .5, // Change the width as needed
                      ),
                      // No bottom border
                    ),
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.grey[900]
                        : Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 35),
                  child: Column(
                    children: [
                      Text('Set your favorite language',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.w700)),
                    SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  fillColor: WidgetStatePropertyAll(
                                    Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  value: false,
                                  groupValue: false,
                                  onChanged: (value) {},
                                ),
                                Text(
                                  'English',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  fillColor: WidgetStatePropertyAll(
                                    Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  value: false,
                                  groupValue: false,
                                  onChanged: (value) {},
                                ),
                                Text(
                                  'Malayalam',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.copyWith(fontWeight: FontWeight.w400),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  fillColor: WidgetStatePropertyAll(
                                    Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                  value: false,
                                  groupValue: false,
                                  onChanged: (value) {},
                                ),
                                Text(
                                  'Hindi',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    Spacer(),

                     CostomeElevatedButton(text: 'Next',
                     ontap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>Loginscreen ()),);
                     },)
                    

      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}