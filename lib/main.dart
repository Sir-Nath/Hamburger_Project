
import 'package:flutter/material.dart';
import 'package:hambugerapp/hamberger_list.dart';
import 'package:hambugerapp/homebottom.dart';
import 'header.dart';
import 'categories.dart';
import 'burger_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData( // this is a widget i should learn more about
        primaryColor: Colors.teal,
        cardColor: Colors.white,
        appBarTheme:const  AppBarTheme( // this dictate the property of appbar
          color: Colors.teal,
          centerTitle: true,
        ),
        bottomAppBarColor: Colors.teal,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Colors.orange,
        )
      ),
      debugShowCheckedModeBanner: false,
      home: const Hamberger(),
        routes: {BurgerPage.tag: (_) => BurgerPage()},
    );
  }
}

class Hamberger extends StatefulWidget {
  const Hamberger({Key? key}) : super(key: key);

  @override
  State<Hamberger> createState() => _HambergerState();
}

class _HambergerState extends State<Hamberger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget> [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.teal,
            ),
            child: Text(
              'Drawer Test',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
          ),
        ]
      ),
      ),
      body: CustomScrollView( //this allow for the body to be scrollable
        slivers: [SliverAppBar(
          pinned: true,
          title: const Text('Deliver Me'),
          // leading: IconButton(
          //   onPressed: (){
          //   },
          //   icon: const Icon(Icons.menu),
          // ),
          actions: [IconButton(
            onPressed: (){

            },
            icon: const Icon(Icons.shopping_cart)
          )],
        ),
          const Header(),
          const Categories(),
          HamburgerList(row: 1,),
          HamburgerList(row: 2,),
          // SliverList(delegate: SliverChildListDelegate([
          //   const Text('Hamburger',
          //   style: TextStyle(
          //     fontSize: 300
          //   ))
          // ]))
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(

        onPressed: (){

        },
        child: const Icon(
          Icons.home
        ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(35)
        ),
        child: Container(
          color: Colors.black38,
          child: const HomeBottom()
        ),
      ),
    );
  }
}

