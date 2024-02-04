import 'package:flutter/material.dart';

class WidgetAppBarAction extends StatefulWidget {
  final IconData icon;
  const WidgetAppBarAction({super.key, required this.icon});

  @override
  State<WidgetAppBarAction> createState() => _WidgetAppBarActionState();
}

class _WidgetAppBarActionState extends State<WidgetAppBarAction> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4

      ),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.white),
      child: Icon(widget.icon ,size: 24,),
    );
  }
}

