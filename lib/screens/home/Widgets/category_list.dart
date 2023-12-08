// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/widgets.dart';

class CategoryList extends StatefulWidget {
  

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  final catList = <String>['Categories', 'See all'];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
     return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 15,
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
                    horizontal: 25,
                  ),
                  child: Text(catList[index]),
                ),
              ),
          // ignore: prefer_const_constructors
          // The distance between two text, 
          //especially how far is see all from popular search 
          separatorBuilder: (_, index) => const SizedBox(
                width: 175,
                
                
              ),
          itemCount: catList.length),
    );
    
  }
}