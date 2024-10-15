import 'package:flutter/material.dart';

class ProfileEditingProvider extends ChangeNotifier {
  TextEditingController editnamecontroller =
      TextEditingController(text: 'Abhay');
  TextEditingController editnumbercontroller =
      TextEditingController(text: '+91 830199532');
  TextEditingController editemailcontroller =
      TextEditingController(text: 'Abhay@gmail.com');
}
