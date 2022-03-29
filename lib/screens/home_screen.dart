import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> { 

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      // top
      appBar: AppBar(
        title: Text('hi world $currentPage'),
        elevation: 0,
        actions: [Icon(Icons.search)],
      ),
      body: PageView(
        children: [
          CustomScreen(color: Colors.greenAccent),
          CustomScreen(color: Colors.yellow),
           CustomScreen(color: Colors.pink),
          CustomScreen(color: Colors.black),
        ],
      ),
      //botones de abajo
      bottomNavigationBar: BottomNavigationBar( 
        currentIndex: currentPage,
        onTap: (index){
          currentPage= index;
          setState(() {
            
          });
        },
          backgroundColor: Colors.black,
          selectedItemColor: Colors.red,
        unselectedItemColor: Colors.yellow.withOpacity(0.5),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.verified_user), label: 'User'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search')
          ]),
    );
  }
}

class CustomScreen extends StatelessWidget {
  final Color color;

  const CustomScreen({required this.color});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: color,
      child: Center(
        child: Text('hiole'),
      ),
    );
  }
}
