// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/widgets.dart';
import 'package:job_search_app/models/job.dart';
import 'package:job_search_app/screens/home/Widgets/job_item.dart';

class CatList extends StatelessWidget {
final cateList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      height: 200,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(
          vertical: 15,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => JobItem(cateList[index]), 
        separatorBuilder: (_, index) => SizedBox(width: 15,), 
        itemCount: cateList.length),
    );
  }
}