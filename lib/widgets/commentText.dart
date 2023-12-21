import 'package:flutter/material.dart';

class commentTextField extends StatelessWidget {
  const commentTextField(
      {super.key,
      required this.title,
      required this.hintText,
      this.controller});
  final String title;
  final String hintText;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(title, style: TextStyle(fontSize: 20)),
        Padding(padding: EdgeInsets.all(10)),
        TextField(
          controller: controller,
          onTapOutside: (event) {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey),
            ),
            hintText: hintText,
          ),
          onChanged: (value) {},
        ),
        Padding(padding: EdgeInsets.all(10)),
      ],
    );
  }
}
