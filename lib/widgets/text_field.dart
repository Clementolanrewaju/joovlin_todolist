import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JoovlinTextField extends StatelessWidget {
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final Function(String) validator;
  final List<TextInputFormatter> inputFormatters;
  final Widget suffix;
  final bool isFilled;

  const JoovlinTextField({
    Key key,
    this.controller,
    this.focusNode,
    @required this.hintText,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.inputFormatters,
    this.textInputAction,
    this.suffix,
    this.isFilled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        border: Border.all(
          color: Colors.transparent
        ),
        color:  Color(0xFF555555).withOpacity(.1),
      ),
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType,
        validator: validator,
        inputFormatters: inputFormatters,
        style: theme.textTheme.bodyText2,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(17.0),
          border: isFilled ? UnderlineInputBorder() : InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          filled: isFilled,
          fillColor:
          isFilled ? Color(0xFFB5B5B5).withOpacity(.21) : Colors.white,
          hintText: hintText,
          hintStyle: theme.textTheme.caption.copyWith(
            color: Color(0xFF555555),
          ),
          suffixIcon: suffix ?? SizedBox.shrink(),
        ),
        obscureText: obscureText,
      ),
    );
  }
}

class JoovlinTextFieldd extends StatelessWidget {
  final TextEditingController controller;
  final String onChanged;
  final FocusNode focusNode;
  final String hintText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  final Function(String) validator;
  final List<TextInputFormatter> inputFormatters;
  final Widget suffix;
  final bool isFilled;

  const JoovlinTextFieldd({
    Key key,
    this.controller,
    this.focusNode,
    this.onChanged,
    @required this.hintText,
    this.keyboardType,
    this.obscureText = false,
    this.validator,
    this.inputFormatters,
    this.textInputAction,
    this.suffix,
    this.isFilled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      height: 96,
      width: MediaQuery.of(context).size.width * 1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
        border: Border.all(
            color: Colors.transparent
        ),
        color:  Color(0xFF555555).withOpacity(.1),
      ),
      child: TextFormField(
        onChanged: (val){},
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType,
        validator: validator,
        inputFormatters: inputFormatters,
        style: theme.textTheme.bodyText2,
        textInputAction: textInputAction,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(17.0),
          border: isFilled ? UnderlineInputBorder() : InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          filled: isFilled,
          fillColor:
          isFilled ? Color(0xFFB5B5B5).withOpacity(.21) : Colors.white,
          hintText: hintText,
          hintStyle: theme.textTheme.caption.copyWith(
            color: Color(0xFF555555),
          ),
          suffixIcon: suffix ?? SizedBox.shrink(),
        ),
        obscureText: obscureText,
      ),
    );
  }
}