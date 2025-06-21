import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'screens/about_page.dart';
import 'screens/contact_page.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomePage(),
    AboutPage(),
    ContactPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'project day 6',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)

      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.person),
          title: Text('My First App'),
          actions: [

            Icon(Icons.login),
            SizedBox(width: 20,),
            Icon(Icons.logout),
            SizedBox(width: 20,),
          ],
          centerTitle: true,
          backgroundColor: Colors.grey,
          foregroundColor: Colors.white,
        ),
        body: _pages[_currentIndex],
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          foregroundColor: Colors.black,
          onPressed: (){

          },
          child: Icon(Icons.add),
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(child: Text('Hello')),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              )
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (value)=>{
              setState(() {
                _currentIndex = value;
              })

            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
                tooltip: 'Go to Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.info),
                label: 'About',
                tooltip: 'Go to Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mail),
                label: 'Contact',
                tooltip: 'Go to Setting',

              )
            ]
        ),
      ),
    );
  }
}
