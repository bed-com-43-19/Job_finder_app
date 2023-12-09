import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({super.key});

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final tagList = <String>[
    
    'Popular Search', 'See all'];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 25
                  ),
                  child: Text(tagList[index]),
                ),
              ),
          // ignore: prefer_const_constructors
          // The distance between two text, 
          //especially how far is see all from popular search 
          separatorBuilder: (_, index) => const SizedBox(width: 150),
          itemCount: tagList.length),
    );
    
  }
}
