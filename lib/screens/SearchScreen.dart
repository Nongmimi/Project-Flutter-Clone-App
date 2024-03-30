// With love by ©Ray Okaah - RayOkaah.me | RayOkaah.com | flutterengineer.com | Twitter: @RaysCode | Email: rayokaah@gmail.com
import 'package:flutter/material.dart';
import 'package:twitter_clone/models/OtherModels.dart';


/// This is our SearchScreen Class
/// It is responsible for displaying a list of trends and recommended tweets
class SearchScreen extends StatelessWidget {

  /// A list of trends to be displayed on our SearchScreen
  /// It is going to be made up of the Trends model which we created earlier
  final List<Trends> trends = [
    Trends(title: "#ยูทีปล่ม", tweetsNo: "8,374 Tweets"),
    Trends(title: "#ประเทศไทยร้อนทะลุ40องศา", tweetsNo: "5,820 Tweets"),
    Trends(title: "#ฝุ่นpm2.5", tweetsNo: "4,080 Tweets"),
    Trends(title: "#ส่งต่อเสื้อผ้ามือ2", tweetsNo: "1,993 Tweets"),
    Trends(title: "#ของดีบอกต่อ", tweetsNo: "1,653 Tweets"),
    Trends(title: "#หนังน่าดู", tweetsNo: "939 Tweets"),
  ];

  /// This is the main build method of this screen
  /// It is responsible for building what is displayed to our screen
  @override
  Widget build(BuildContext context) {

    /// Our build method will return a CustomScrollView
    /// This is neccessary inorder to display a sliver list
    /// Now what does a sliverList do for us? why not the normal listview?
    /// A Sliverlist is a special kind of list with way more flexibility than we
    /// can get from a normal listView.builder class.
    /// It enables us to have multiple lists which could include other slivers and even non slivers
    /// And it seamlessly handles scroll using a CustomScrollView class.
    /// Our build method will return a CustomScrollView

    return new CustomScrollView(
      // Our CustomScrollView class expects a list of slivers
      slivers: <Widget>[
        new SliverAppBar(
          backgroundColor: Colors.white70,
          centerTitle: false,
          title: new Text("ความนิยมสำหรับคุณ", style: new TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 32, 15, 39)),),
        ),
        new SliverToBoxAdapter(child: Container(height: 0.25, width: double.infinity, color: Colors.black54,)),
        // Using the SliverToBoxAdapter as above, we are able to convert normal Boxes and widgets to Sliver.

        new SliverList(
            delegate: new SliverChildBuilderDelegate((context, index) => _buildTrendsList(context, index),
              childCount: trends.length
        ),),

       
       //new SliverToBoxAdapter(child: _buildTweets()),
       // _buildTrends(),
        //_buildTweets()

      ],
    );

  }

// This method enables us to build our list of Trends
  // we retrieve a Trends object from our list of Trends,
  // and assign them as values to the ListTile class.
  Widget _buildTrendsList(BuildContext context, index){
    Trends trend = trends[index];
    return
    new Column(children: <Widget>[

      ListTile(
      leading: new Text((index +1).toString()),
      title: new Text(trend.title),
      subtitle: new Text(trend.tweetsNo),
        
    ),
      new Container(height: 0.25, width: double.infinity, color: Colors.black54,)
    ],);
  }

}