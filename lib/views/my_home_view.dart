import 'package:flutter/material.dart';
import 'package:instagram_clone/views/utils/bubble_stories.dart';
import 'package:instagram_clone/views/utils/posts.dart';
import 'package:unicons/unicons.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({Key? key}) : super(key: key);

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  int _selectedIndex=0;
  void _navigateBottomNavbar(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram',
          style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 22,
          ),
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        actions: [
          Icon(
            Icons.add_box_outlined,
            color: Theme.of(context).iconTheme.color,
          ),
          const SizedBox(width: 15,),
          Icon(
            UniconsLine.heart,
            color: Theme.of(context).iconTheme.color,
          ),
          const SizedBox(
            width: 15,
          ),
          Icon(
            UniconsLine.facebook_messenger_alt,
            color: Theme.of(context).iconTheme.color,
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context,index){
                return const BubbleStories();
              }, 
              separatorBuilder: (BuildContext context,separatorIndex){
                return const SizedBox(width: 10,);
              }, 
              itemCount: 10),
          ),
          const Divider(),

          const PostsView(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomNavbar,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const[
        BottomNavigationBarItem(
          icon: Icon(UniconsLine.estate),
          label: 'Home',
          
        ),
        BottomNavigationBarItem(
          icon: Icon(UniconsLine.search),
          label: 'Search',
          
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.video_call),
          label: 'Video',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop),
          label: 'store',
          
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundImage: AssetImage('assets/1.png'),
          ),
          label:'Profile',
        ),
      ]),
    );
  }
}
