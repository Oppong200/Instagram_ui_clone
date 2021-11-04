import 'package:flutter/material.dart';

class BubbleStories extends StatelessWidget {
  const BubbleStories({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/1.png'),
          ),
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,color: Colors.grey,
            
          ),
        ),
        Text('name',style: Theme.of(context).textTheme.bodyText1,),
      ],
    );
  }
}