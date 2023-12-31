//  prefer_const_constructors_in_immutables, avoid_unnecessary_containers, prefer_const_constructors
// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:job_search_app/models/job.dart';
import '../../../widgets/icon_text.dart';

class JobDetail extends StatelessWidget {
  final Job job;
  JobDetail(this.job, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
        height: 600,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 5,
                width: 60,
                color: Colors.grey.withOpacity(0.3),
              ),
              SizedBox(height: 30),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey.withOpacity(.3)),
                        child: Image.asset(job.logoUrl),
                      ),
                      SizedBox(
                        height: 10
                      ),
                      Text(
                        job.company,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        job.isMark
                            ? Icons.bookmark
                            : Icons.bookmark_outline_rounded,
                        color: job.isMark
                            ? Colors.black
                            : Colors.blue,
                      ),
                      Icon(Icons.more_horiz_outlined),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(job.title,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconText(Icons.location_on_outlined, job.location),
                  IconText(Icons.access_time_outlined, job.time),
                ],
              ),
              SizedBox(height: 30),
              Text(
                'Requirement',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              ...job.req.map((e) => Container(
                margin: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(height: 10),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 300,),
                      child: Text(e,
                      style: TextStyle(
                        wordSpacing: 2.5,
                        height:1.5, 
                      ),

                      ),),
                  ], 
                ),
              )).toList(),
              Container(
                margin: EdgeInsets.symmetric(vertical: 25),
                height: 45,
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                  onPressed: () {}, 
                  child: Text('Apply Now'),),
              ),
                ],
              )
            ],
          ),
        ));
  }
}
