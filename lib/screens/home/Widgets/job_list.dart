// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:job_search_app/models/job.dart';
import 'package:job_search_app/screens/home/Widgets/job_detail.dart';
import 'package:job_search_app/screens/home/Widgets/job_item.dart';

class JobList extends StatelessWidget {
  final jobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      height: 200,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(
            vertical: 5,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                    context: context,
                    builder: (context) => JobDetail(jobList[index]));
              },
              child: JobItem(jobList[index])),
          separatorBuilder: (_, index) => SizedBox(width: 20),
          itemCount: jobList.length),
    );
  }
}
