import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top:50,
        left: 100,
        right: 25,
        bottom: 10
        
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Find your Job',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30, 
              ),
              )
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 20, right: 10),
              child: Stack(
                children: [
                  const Icon(
                    Icons.notifications_none_outlined,
                    size: 30,
                    color: Colors.grey,
              ),
              Positioned(
                top: 0, 
                right: 0, 
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle
                  ),
                ),
                )
                ],
              ),
            )
          ],
        ),
      ],),
    );
  }
}
