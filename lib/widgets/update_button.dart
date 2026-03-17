import 'package:flutter/material.dart';
 
class UpdateButton extends StatelessWidget {
  final VoidCallback onUpdate;
 
  const UpdateButton({super.key, required this.onUpdate});
 
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onUpdate,
      child: Text('Update Details'),
    );
  }
}
 