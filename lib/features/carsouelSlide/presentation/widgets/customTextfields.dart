import 'package:flutter/material.dart';

class CutsomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String type;
  final IconData icon;
  final String uppterType;

  const CutsomTextField(
      {super.key,
      required this.controller,
      required this.type,
      required this.icon,
      required this.uppterType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        obscureText: true,
        decoration: InputDecoration(
            hintText: type,
            labelText: "Password",
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(28),
                borderSide: const BorderSide(color: Colors.grey),
                gapPadding: 10),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Color(0xffB409CE)),
                gapPadding: 10),
            suffixIcon: Icon(icon)),
        validator: (value) {
          // if (value!.isEmpty &&
          //     !Provider.of<errorProvider>(context, listen: false)
          //         .errors
          //         .contains('Enter password')) {
          //   Provider.of<errorProvider>(context, listen: false)
          //       .addError('Enter password');
        }
        // return null;
        // },
        );
  }
}
