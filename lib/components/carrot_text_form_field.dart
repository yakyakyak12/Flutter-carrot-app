import 'package:flutter/material.dart';

class CarrotTextFormField extends StatefulWidget {
  final textController;
  final validate;
  String text;
  bool isPassword;

  CarrotTextFormField({
    required this.text,
    required this.validate,
    this.textController,
    this.isPassword = false,
  });
  @override
  _CarrotTextFormFieldState createState() => _CarrotTextFormFieldState();
}

class _CarrotTextFormFieldState extends State<CarrotTextFormField> {
  bool _isPasswordVisible = false;

  @override
  void initState() {
    super.initState();
    _isPasswordVisible = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 15),
        Text(
          widget.text,
          style: TextStyle(
            fontSize: 15,
            height: 2,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        TextFormField(
          key: UniqueKey(),
          controller: widget.textController,
          validator: widget.validate,
          obscureText: _isPasswordVisible,
          decoration: InputDecoration(
            hintText: "Enter your " + widget.text,
            hintStyle: TextStyle(
              fontSize: 15,
              color: Colors.grey,
              fontWeight: FontWeight.w600,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  )
                : null,
          ),
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
