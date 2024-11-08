import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onSearch;

  const CustomTextField({
    Key? key,
    this.controller,
    this.onSearch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.text,
        onSubmitted: onSearch,
        decoration: InputDecoration(
          enabledBorder: buildOutlineInputBorder(),
          focusedBorder: buildOutlineInputBorder(),
          labelText: "Search",
          suffixIcon: IconButton(
            onPressed: () {
              if (onSearch != null && controller != null) {
                onSearch!(controller!.text);
              }
            },
            icon: const Icon(Icons.search),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.white, width: 1.5),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
