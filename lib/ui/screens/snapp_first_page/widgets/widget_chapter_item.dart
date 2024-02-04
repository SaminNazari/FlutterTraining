import 'package:flutter/material.dart';
import '../entity/entity_chapter.dart';

class WidgetChapterItem extends StatefulWidget {
  final EntityChapter chapter;
  const WidgetChapterItem(this.chapter, {super.key});

  @override
  State<WidgetChapterItem> createState() => _WidgetChapterItemState();
}

class _WidgetChapterItemState extends State<WidgetChapterItem> {
  EntityChapter get chapter => widget.chapter;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(220)),
      elevation: 8,
      child: Stack(
        children: [
          Positioned.fill(child: Image.asset(chapter.imageLink,fit: BoxFit.cover,)),
          Positioned.fill(child: Container(color: Colors.white.withAlpha(220
          ),)),
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Chapter ${chapter.id}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18)),
                Text(chapter.title,style: const TextStyle(fontSize: 14,color: Colors.black))
              ],
            ),
          ),
        ],
      ),
    );
    return Card(
      elevation: 8,
      child: ListTile(
        leading: SizedBox.square(
            dimension: 64,
            child: Image.asset(chapter.imageLink)),
        title: Text("Chapter ${chapter.id}",style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        subtitle: Text(chapter.title),
        subtitleTextStyle: const TextStyle(fontSize: 14,color: Colors.black),
        trailing: Icon(chapter.isBought?Icons.check:Icons.add_shopping_cart,color: chapter.isBought?Colors.green:Colors.grey),
      ),
    );
  }
}