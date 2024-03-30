// With love by ©Ray Okaah - RayOkaah.me | RayOkaah.com | flutterengineer.com | Twitter: @RaysCode | Email: rayokaah@gmail.com
// source : https://github.com/RayOkaah/Flutter_Twitter_Clone
import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/HomeScreen.dart';
import 'package:twitter_clone/screens/MessagesScreen.dart';
import 'package:twitter_clone/screens/NotificationScreen.dart';
import 'package:twitter_clone/screens/SearchScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your whole application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
      ),
       home: MyHomePage(title: 'Flutter Demo Home Page',  key: UniqueKey(),),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required Key key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // The _MyHomePageState build method is going to build our tabBars and TabViews
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 4, child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu, color: Color.fromARGB(255, 149, 39, 152)),
            onPressed: (){},
          ),
          title: const Text("TWITPARTY", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 165, 26, 187),),),
          centerTitle: true,
          
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings, color: Color.fromARGB(255, 149, 39, 152)),
              onPressed: () {},)],
          bottom: const TabBar(
              isScrollable: false,
              tabs: [
                SizedBox(width: 50.0,child: Tab(icon: Icon(Icons.home, color: Color.fromARGB(255, 171, 76, 174)),), ),
                SizedBox(width: 50.0,child: Tab(icon: Icon(Icons.search, color: Color.fromARGB(255, 171, 76, 174)),), ),
                SizedBox(width: 50.0,child: Tab(icon: Icon(Icons.notifications_none, color: Color.fromARGB(255, 171, 76, 174)),), ),
                SizedBox(width: 50.0,child: Tab(icon: Icon(Icons.mail_outline, color: Color.fromARGB(255, 171, 76, 174)),), ),
              ]),
        ),
        body: TabBarView(
            children: [ // Remember the sequence of this classes below is important
              HomeScreen(),
              SearchScreen(),
              NotificationsScreen(),
              MessagesScreen()
            ]),
      )),
    );
  }
}