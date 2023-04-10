import 'package:flutter/material.dart';

class StackedWidgets extends StatelessWidget {

  final List items;
  final double size;
  final double shift;
  final TextDirection direction;
  const StackedWidgets({Key? key,required this.items,this.size = 100,this.shift = 20,this.direction = TextDirection.ltr}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final allimgs = items.asMap()
        .map((index,item){
          final left = size - shift;
          final val = Container(
            width: size,
            height: size,
            child: item,
            margin: EdgeInsets.only(left: left * index),
      );
      return MapEntry(index, val);
    }).values.toList();
    return Stack(
      children: direction == TextDirection.ltr
      ? allimgs.reversed.toList()
      : allimgs,
    );
  }
}
