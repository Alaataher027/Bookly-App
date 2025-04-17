import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, this.onPressed, this.onChanged, this.onSubmitted});

  final Function(String?)? onPressed;
  final Function(String?)? onChanged;
  final Function(String?)? onSubmitted;


  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      onSubmitted:onSubmitted ,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        hintText: "Search",
        suffixIcon: Opacity(
          opacity: .8,
          child: IconButton(
            onPressed: () => onPressed,
            icon: Icon(Icons.search),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
