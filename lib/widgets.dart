import 'package:flutter/material.dart';

class FlatButtons extends StatelessWidget {
  final Widget _child;
  Function _function;
  OutlinedBorder? _shape;
  Color? _color;
  FlatButtons(
      {Key? key,
      required Widget child,
      required Function function,
      OutlinedBorder? shape,
      Color? color})
      : _child = child,
        _function = function,
        _color = color,
        _shape = shape,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => _function(),
      child: _child,
      style: TextButton.styleFrom(primary: _color, shape: _shape),
    );
  }
}

class RaisedButtons extends StatelessWidget {
  final Widget _child;
  Function _onPressed;
  OutlinedBorder? _shape;
  Color? _color;
  RaisedButtons(
      {Key? key,
      required Widget child,
      required Function onPressed,
      OutlinedBorder? shape,
      Color? color})
      : _child = child,
        _onPressed = onPressed,
        _shape = shape,
        _color = color,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: _color, elevation: 3, shape: _shape),
        onPressed: () => _onPressed(),
        child: _child);
  }
}
