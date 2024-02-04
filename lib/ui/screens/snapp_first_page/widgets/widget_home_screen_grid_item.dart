import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_training/ui/screens/snapp_first_page/entity/entity_home_screen_grid_item.dart';

class WidgetHomeScreenGridItem extends StatelessWidget {
  final EntityHomeScreenItem item;

  const WidgetHomeScreenGridItem(this.item,{super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 48,height: 48,
          decoration: BoxDecoration(
          color: item.color,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Icon(item.icon,color: Colors.white,size: 32,),
        ),
        Text(item.title,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),)
      ],
    );
  }
}






















