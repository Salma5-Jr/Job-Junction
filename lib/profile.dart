import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  File? _profileImage;
  final ImagePicker _picker = ImagePicker();

  Future<void> _pickImage() async {
    // Open gallery to pick image
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _profileImage = File(pickedFile.path); // Set the picked image as profile
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('JOB JUNCTION'),
        centerTitle: true,
        backgroundColor: Colors.blue,
       
actions: [
            GestureDetector(
              onTap: _pickImage,
              child: CircleAvatar(
                radius: 30,
                backgroundImage:
                    _profileImage != null ? FileImage(_profileImage!) : null,
                child: _profileImage == null
                    ? Icon(Icons.person, size: 30) 
                    : null,
              ),
            ), 
  ],
)
        
      );
          
  
    
  }
}




 
     