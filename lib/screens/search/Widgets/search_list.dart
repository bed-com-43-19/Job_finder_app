// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:job_search_app/models/job.dart';
import 'package:job_search_app/screens/home/Widgets/job_item.dart';

class SearchList extends StatelessWidget {
  
  final jobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 25,
      ),
      child: ListView.separated(
        padding: EdgeInsets.only(
          left: 25,
          right: 25, 
          bottom: 25,
        ),
        itemBuilder: (context, index) => JobItem(
          jobList[index],
          showTime: false,
        ), 
        separatorBuilder: (_, index) => SizedBox(height: 20), 
        itemCount: jobList.length),
    );
  }
}
