// import 'package:flutter/material.dart';

// class Dropdownbutton extends StatelessWidget {
//   const Dropdownbutton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  SizedBox(
//           height: 200,
//           child: Column(
//             children: [
//               ListTile(
//                 title: const Text('Male'),
//                 leading: Radio<String>(
//                   value: 'Male',
//                   groupValue: selectionProvider.selectedGender,
//                   onChanged: (String? value) {
//                     selectionProvider.setSelectedGender(value);
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//               ListTile(
//                 title: const Text('Female'),
//                 leading: Radio<String>(
//                   value: 'Female',
//                   groupValue: selectionProvider.selectedGender,
//                   onChanged: (String? value) {
//                     selectionProvider.setSelectedGender(value);
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//               ListTile(
//                 title: const Text('Other'),
//                 leading: Radio<String>(
//                   value: 'Other',
//                   groupValue: selectionProvider.selectedGender,
//                   onChanged: (String? value) {
//                     selectionProvider.setSelectedGender(value);
//                     Navigator.pop(context);
//                   },
//                 ),
//               ),
//             ],
//           ),
//         );
//   }
// }