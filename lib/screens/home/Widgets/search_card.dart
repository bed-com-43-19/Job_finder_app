// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:job_search_app/screens/search/search.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(
              builder: (context) => 
              SearchPage()));
      },
      child: Container(
        margin: EdgeInsets.all(25),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 219, 214, 214),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
              Image.asset(
                'assets/images/search.png',
                width: 20,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Search...',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
