import 'package:flutter/material.dart';
import 'package:untitled2/componants/def_textfield.dart';

class AccountSettingsScreen extends StatefulWidget {
  @override
  _AccountSettingsScreenState createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Settings'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    print("object");
                    // Handle tap to edit photo
                    // Show a dialog or navigate to a new screen to select a new photo
                    // Once the new photo is selected, call _updatePhoto() with the new photo URL
                  },
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage:
                            AssetImage('assets/images/profile.png'),
                      ),
                      Positioned(
                        bottom: 0.0,
                        right: 0.0,
                        child: Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.camera_alt_sharp,
                            color: Colors.white,
                          ),
                        ),
                      ),
    ]),
                ),
                SizedBox(height: 16.0),
                Text(
                  'John Doe',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Profile Information',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          def_textfield(
            label: 'Name',
            icon: Icon(Icons.edit),
          ),
          def_textfield(
            label: 'Contact Number',
            icon: Icon(Icons.edit),
          ),
          def_textfield(
            label: 'Email',
            icon: Icon(Icons.edit),
          ),
          def_textfield(
            label: 'Location',
            icon: Icon(Icons.edit),
          ),
          SizedBox(height: 16.0),
          Text(
            'Change password',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          def_textfield(
            label: 'Old Password',
          ),
          def_textfield(
            label: 'New Password',
          ),
        ],
      ),
    );
  }
}
