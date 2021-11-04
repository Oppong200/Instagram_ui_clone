import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class PostsView extends StatelessWidget {
  const PostsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/23.jpg')
          ),
          title: Text('GrassRoots Hub', style: Theme.of(context).textTheme.bodyText1,),
          subtitle: Text('Baakoniaba behind GNAT Hall Sunyani',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          trailing:Icon(UniconsLine.ellipsis_v,color: Theme.of(context).iconTheme.color,),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 400,
          child: Image.asset('assets/2.jpg',width: MediaQuery.of(context).size.width,),
        ),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const[
                  Icon(Icons.favorite_outline),
                  SizedBox(width: 15,),
                  Icon(UniconsLine.comment),
                  SizedBox(width: 15,),
                  Icon(UniconsLine.message),
                ],
              ),
              Row(
                children: const[
                  Icon(Icons.bookmark_outline),
                ],
              ),
              
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(radius: 15,),
                  const SizedBox(width: 10,),
                  Text('Liked by 7pixcraft and 1,068 others',style: Theme.of(context).textTheme.bodyText1,),
                ],
                
              ),
              const SizedBox(height: 5,),
              Text('View all 173 comments', style: Theme.of(context).textTheme.bodyText1,),
              const SizedBox(
                height: 5,
              ),
              const Text('22 hours ago', style: TextStyle(color: Colors.grey),),
            ],
          ),
        ),


      ],
    );
  }
}
