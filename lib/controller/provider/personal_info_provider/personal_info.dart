import 'package:flutter/material.dart';

class PersonalInfoProvider with ChangeNotifier {
  final TextEditingController genderController = TextEditingController();

  String? _selectedGender;

  String? get selectedGender => _selectedGender;

  void setSelectedGender(String? value) {
    _selectedGender = value;
    genderController.text = value ?? '';
    notifyListeners();
  }
}
