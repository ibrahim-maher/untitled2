import 'package:flutter/material.dart';
import 'package:untitled2/componants/def_button.dart';
import 'package:untitled2/componants/def_textfield.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

    TextEditingController _birthController=TextEditingController();
    TextEditingController _genderController=TextEditingController();
    TextEditingController _WeightController=TextEditingController();
    TextEditingController _heightController=TextEditingController();


    TextEditingController _statusController=TextEditingController();
    TextEditingController _lastupdateController=TextEditingController();
    TextEditingController _diabeticController=TextEditingController();
    TextEditingController _doctorController=TextEditingController();


    @override
    void initState() {
      super.initState();
      _birthController = TextEditingController();
      _genderController = TextEditingController();
      _WeightController = TextEditingController();
      _heightController = TextEditingController();

      _statusController = TextEditingController();
      _lastupdateController = TextEditingController();
      _diabeticController = TextEditingController();
      _doctorController = TextEditingController();
    }

    @override
    void dispose() {
      _birthController.dispose();
      _genderController.dispose();
      _WeightController.dispose();
      _heightController.dispose();
      _statusController.dispose();
      _lastupdateController.dispose();
      _diabeticController.dispose();
      _doctorController.dispose();
      super.dispose();
    }

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
            controller: _birthController,
            label: 'Birth Date',
            icon: Icon(Icons.edit),
          ),
          def_textfield(
            controller: _genderController,
            label: 'Gender',
            icon: Icon(Icons.edit),
          ),
          def_textfield(
            controller: _WeightController,
            label: 'Weight',
            icon: Icon(Icons.edit),
          ),
          def_textfield(
            controller: _heightController,
            label: 'Height',
            icon: Icon(Icons.edit),
          ),
          SizedBox(height: 16.0),
          Text(
            'Medical Information',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          def_textfield(
            controller: _statusController,
            label: 'Status',
            icon: Icon(Icons.edit),
          ),
          def_textfield(
            controller: _lastupdateController,
            label: 'Last Update',
            icon: Icon(Icons.edit),
          ),
          def_textfield(
            controller: _diabeticController,
            label: 'Diabetic',
            icon: Icon(Icons.edit),
          ),
          def_textfield(
            controller: _doctorController,
            label: 'Doctor',
            icon: Icon(Icons.edit),
          ),
        defButton(text: 'Save',)
        ],
      ),
    );
  }
}
