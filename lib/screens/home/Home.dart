// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, file_names

import 'package:flutter/material.dart';
import 'package:job_search_app/screens/home/Widgets/category_list.dart';
import 'Widgets/cat_list.dart';
import 'Widgets/job_list.dart';
import 'Widgets/tag_list.dart';
import 'Widgets/search_card.dart';
import 'Widgets/home_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){

    return  SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Row(
              // children: [
              //   Expanded(flex: 2,
              //   child: Container(),),
                
              //   Expanded(flex: 1,
              //   child: Container(),),
              // ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeAppBar(),
                SearchCard(),
                TagList(),
                JobList(),
                CategoryList(),
                CatList(),
                ],
            ),
          ],  
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        elevation: 0,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white),
        ),

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              size: 40,
              color: Colors.blue,),),
          BottomNavigationBarItem(
            label: 'Bookmark',
            icon: Icon(
              Icons.bookmark,
              size: 40,),),
          BottomNavigationBarItem(
            label: '',
            icon: Text(''),),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: Icon(
              Icons.settings,
              size: 40,),),
          BottomNavigationBarItem(
            label: 'Person',
            icon: Icon(
              Icons.person,
            size: 40,),),  
            
        ],
      ),
      ),
      );
  }
}
