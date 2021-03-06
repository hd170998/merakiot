import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  final String label;
  final Function(String) validator;
  final bool isSecure;
  final TextInputType inputType;


  const InputText({Key key, @required this.label, this.validator, this.isSecure = false, this.inputType = TextInputType.text}) : super(key: key);
  @override
  _InputTextState createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      obscureText: widget.isSecure,
      keyboardType: widget.inputType,
      decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(color: Color.fromRGBO(137, 209, 101, 1)),
          contentPadding: EdgeInsets.symmetric(vertical: 10)

      ),
    );
  }
}