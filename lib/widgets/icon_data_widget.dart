import 'package:flutter/material.dart';

class IconDataWidget extends StatelessWidget {
  String _data = "text";
  IconData _icon = Icons.abc;
  final Color iconColor;

  IconDataWidget({
    required String data,
    required IconData icon,
    this.iconColor = const Color(0xff3E3A57),
  }) {
    _data = data;
    _icon = icon;
  }
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(
        _icon,
        size: 15,
        color: iconColor,
      ),
      SizedBox(width: 5),
      Text(
        _data,
        style: TextStyle(
          color: iconColor,
          fontSize: 12,
        ),
      )
    ]);
  }
}
