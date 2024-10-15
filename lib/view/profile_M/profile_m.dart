import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:kerigo_driver_app/contoler/provider/profile_editing_provider.dart';
import 'package:kerigo_driver_app/view/widget/costom_elevated_button.dart';
import 'package:provider/provider.dart';

class ProfileM extends StatelessWidget {
  const ProfileM({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProfileEditingProvider>(
      builder: (context, profileEditingPrvdr, child) => Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios_new_rounded),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Profile',
                            style:
                                Theme.of(context).textTheme.bodyLarge?.copyWith(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      color: HexColor('#2D2D2D'),
                                    ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 66,
                              backgroundImage:
                                  AssetImage('asset/Unknown3.jpeg'),
                            ),
                            CircleAvatar(
                              radius: 15,
                              backgroundColor:
                                  Color.fromARGB(255, 204, 204, 204),
                              child: Icon(Icons.camera_alt_rounded),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      _buildTextField(
                        labelText: 'Name',
                        controller: profileEditingPrvdr.editnumbercontroller,
                        context: context,
                      ),
                      _buildTextField(
                        controller: profileEditingPrvdr.editemailcontroller,
                        labelText: 'Email',
                        context: context,
                      ),
                      _buildTextField(
                        controller: profileEditingPrvdr.editnumbercontroller,
                        labelText: 'Phone Number',
                        context: context,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CostomeElevatedButton(
                    text: 'Update profile',
                    ontap: () {
                      // Add your onTap logic here
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    required context,
  }) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 55,
        width: 345,
        decoration: BoxDecoration(
          border: Border.all(width: 0.5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: TextFormField(
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: HexColor('#2D2D2D'),
                ),
            controller: controller,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(left: 8, bottom: 0, top: 10),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.edit),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
