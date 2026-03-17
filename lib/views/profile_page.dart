import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/profile_details.dart';
import 'package:flutter_application_1/widgets/profile_image.dart';
import 'package:flutter_application_1/widgets/update_button.dart';
import 'package:image_picker/image_picker.dart';


 
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();


}
 
class _ProfilePageState extends State<ProfilePage> {
  String name = 'Thabo William Kayane';
  String role = 'Software Developer';
  String email = 'Williamkayane@gmail.com';
  String phoneNumber = '0682952299';

  final TextEditingController nameController =
      TextEditingController();

  final TextEditingController roleController =
      TextEditingController();

  final TextEditingController emailController =
      TextEditingController();

  final TextEditingController phoneController =
      TextEditingController();
  XFile? _image;
  final ImagePicker _picker = ImagePicker();
 
  
Future<void> _pickImage() async {
  final pickedFile =
      await _picker.pickImage(source: ImageSource.gallery);

  if (pickedFile != null) {
    setState(() {
      _image = pickedFile;
    });
  }
}

void _showUpdateDialog() {

  nameController.text = name;
  roleController.text = role;
  emailController.text = email;
  phoneController.text = phoneNumber;

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(

        title: Text("Update Profile"),

        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: "Name",
                ),
              ),

              const SizedBox(height: 15), 

              TextField(
                controller: roleController,
                decoration: InputDecoration(
                  labelText: "Role",
                ),
              ),
              const SizedBox(height: 15), 

              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                ),
              ),
              const SizedBox(height: 15), 

              TextField(
                controller: phoneController,
                decoration: InputDecoration(
                  labelText: "Phone",
                ),
              ),
              const SizedBox(height: 15), 

            ],
          ),
        ),

        actions: [

          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Cancel"),
          ),

          ElevatedButton(
          onPressed: () {

            _updateName(nameController.text);
            _updateRole(roleController.text);
            _updateEmail(emailController.text);
            _updatePhoneNumber(phoneController.text);

            Navigator.pop(context);

  },
  child: Text("Save"),
),

        ],
      );
    },
  );
}
 
  void _updateName(String newName) {
    setState(() {
      name = newName;
    });
  }
 
  void _updateRole(String newRole) {
    setState(() {
      role = newRole;
    });
  }
 
  void _updateEmail(String newEmail) {
    setState(() {
      email = newEmail;
    });
  }
 
  void _updatePhoneNumber(String newPhoneNumber) {
    setState(() {
      phoneNumber = newPhoneNumber;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Column(
        children: [
          ProfileImage(
            image: _image,
            onImagePick: _pickImage,
          ),
          const SizedBox(height: 10), // space after image

          Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ProfileDetails(
          name: name,
          role: role,
          email: email,
          phoneNumber: phoneNumber,
      ),
    ),
          SizedBox(height: 20),
          UpdateButton(
          onUpdate: _showUpdateDialog,
          ),
        ],
      ),
    );
  }
}