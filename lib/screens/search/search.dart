// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:job_search_app/screens/search/Widgets/search_app_bar.dart';
import 'package:job_search_app/screens/search/Widgets/search_input.dart';
import 'package:job_search_app/screens/search/Widgets/search_list.dart';
import 'package:job_search_app/screens/search/Widgets/search_option.dart';

class SearchPage extends StatelessWidget {
 SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          // Row(
          //   children: [],
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchAppBar(),
              SearchInput(),
              SearchOption(),
              SearchList(),
            ],
          ),
        ],
      ),
    );
  }
}