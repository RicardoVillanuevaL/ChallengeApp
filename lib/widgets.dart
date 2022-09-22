import 'package:flutter/material.dart';

class FlatButtons extends StatelessWidget {
  final Widget _child;
  final Function _function;
  final OutlinedBorder? _shape;
  final Color? _color;
  const FlatButtons(
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
      style: TextButton.styleFrom(primary: _color, shape: _shape),
      child: _child,
    );
  }
}

class RaisedButtons extends StatelessWidget {
  final Widget _child;
  final Function _onPressed;
  final OutlinedBorder? _shape;
  final Color? _color;
  const RaisedButtons(
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
