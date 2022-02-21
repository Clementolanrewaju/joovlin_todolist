import 'package:flutter/material.dart';

class JoovlinFilledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final bool isBusy;
  final double radius;
  final Color textColor;
  final double height;
  final double width;

  const JoovlinFilledButton({
    Key key,
    this.onPressed,
    this.text,
    this.isBusy = false,
    this.radius = 8.0,
    this.textColor,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DecoratedBox(
      decoration: BoxDecoration(
        boxShadow: [
          // BoxShadow(
          //   color: Color.fromRGBO(116, 45, 221, 1).withOpacity(0.15),
          //   offset: Offset(0, 2),
          //   blurRadius: 3,
          // ),
        ],
        borderRadius: BorderRadius.circular(
          radius,
        ),
          color: Color.fromRGBO(116, 45, 221, 1)
      ),
      // ignore: deprecated_member_use
      child: FlatButton(
        color: Color.fromRGBO(116, 45, 221, 1),
        height: height ?? 55,
        minWidth: width ?? MediaQuery.of(context).size.width * 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            radius,
          ),
        ),
        textColor: textColor ?? Colors.white,
        onPressed: onPressed,
        child: isBusy
            ? SizedBox(
          height: 20,
          width: 20,
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation(Colors.white),
            strokeWidth: 1,
          ),
        )
            : Text(
          text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}