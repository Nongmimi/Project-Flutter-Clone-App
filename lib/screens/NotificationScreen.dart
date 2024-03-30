// With love by ©Ray Okaah - RayOkaah.me | RayOkaah.com | flutterengineer.com | Twitter: @RaysCode | Email: rayokaah@gmail.com

import 'package:flutter/material.dart';
import 'package:twitter_clone/models/OtherModels.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return new Scaffold(
      body:
      ListView.builder(
      itemCount: 1,
        itemBuilder: _buildAll)

  );

  }

  /// We will create a list of User objects called whoFollowedMe
  /// It will hold information about users who recently followed your Twitter account
  final List<User> whoFollowedMe = [
    User(name: "สุมารี", avatarUrl: "assets/images/สุมารีโปรฟาย.jpg", likedTweet: ''),
    User(name: "manuty", avatarUrl: "assets/images/พี่เหม้น.jpg", likedTweet: ''),
    User(name: "Rayji", avatarUrl: "assets/images/ชาวแก๊งโปรฟาย.jpg", likedTweet: '')
  ];

  /// We will create a list of User objects called highlights
  /// It should hold information about users featured on Twitter's account highlight.
  final List<User> highlights = [
    User(name: "sxppi", avatarUrl: "assets/images/พี่ง่วง.webp", likedTweet: ''),
    User(name: "พี่เก๋า", avatarUrl: "assets/images/พี่เก๋า.jpg", likedTweet: ''),
    User(name: "GGG", avatarUrl: "assets/images/หลวงพี่โปรฟาย.jpg", likedTweet: ''),
    User(name: "ปื๊ดnumber1", avatarUrl: "assets/images/พี่เปียกโปรฟาย.jpg", likedTweet: ''),
    User(name: "winwin", avatarUrl: "assets/images/สู้.jpg", likedTweet: ''),
  ];

  /// We will create a list of User objects called likesRecentPic
  /// It will hold information about users who recently liked our tweet or pictures
  final List<User> likesRecentPic = [
      User(name: "พี่เก๋า", avatarUrl: "assets/images/พี่เก๋า.jpg", likedTweet: "ตกหลุมรักขึ้นไม่ไหว ไม่ใช่ว่าเธอน่ารักเกินไป แต่เราอ้วน"),
      User(name: "สุมารี", avatarUrl: "assets/images/สุมารีโปรฟาย.jpg", likedTweet: ''),
      User(name: "คนที่ทำงานหนักเพื่อคุณ", avatarUrl: "assets/images/สมสักโปรฟาย.jpg", likedTweet: ''),
    ];

  // This method returns a column displaying the avatars and
  // information about who just followed us
  Widget _buildWhoFollowed (BuildContext context, int index) {

    /// We will create a list of widgets called avatarList
    /// It shall hold the avatars we intend to display in this _buildWhoFollowed method
    List<Widget> avatarList = [];
      User follower = whoFollowedMe[index];

      /// We will loop through our list list of whoFollowedMe,
    /// and for every follower we will create a new circle avatar and add it to our avatarList
      for (follower in whoFollowedMe) {
        avatarList.add(
            new CircleAvatar(backgroundImage: AssetImage(follower.avatarUrl),radius: 20.0,),
            );
      }

    return new // Returns a new column.
    Column(children: <Widget>[
      new Padding(padding: EdgeInsets.only(top: 10.0)),
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      new Padding(child: Image.asset("images/twitter.png", height: 20.0, width: 20.0,), padding: EdgeInsets.only(right: 10.0, left: 40.0),),

      new
      Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
        Row(children: avatarList),
        new Padding(padding: EdgeInsets.only(bottom: 5.0)),
        new Text(whoFollowedMe[0].name + " and " + (whoFollowedMe.length -1).toString() + " others followed you"),
      ],),

    ],),
      new Padding(padding: EdgeInsets.only(top: 10.0)),
      new Container(height: 0.25, width: double.infinity, color: Colors.black45,) // Our line divider
    ],);

  }

  /// The _buildHighlights method will display a
  /// horizontal list of users featured on Twitter highlights
  Widget _buildHighlights (BuildContext context, int index) {

    /// We will create a list of widgets called avatarList
    /// It shall hold the avatars we intend to display in this _buildHighlights method
    List<Widget> avatarList = [];
    User follower = highlights[index];

    /// We will loop through our list list of highlights,
    /// and for every follower we will create a new circle avatar and add it to our avatarList
    for (follower in highlights) {
      avatarList.add(
        new CircleAvatar(backgroundImage: AssetImage(follower.avatarUrl),radius: 20.0,),
      );
    }

    return new
    Column(children: <Widget>[
      new Padding(padding: EdgeInsets.only(top: 10.0)),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Padding(child: Icon(Icons.person, color: Color.fromARGB(255, 139, 32, 196),), padding: EdgeInsets.only(right: 10.0, left: 40.0),),

          new
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: avatarList),
              new Padding(padding: EdgeInsets.only(bottom: 5.0)),

    new Text("Highlights from " +
    follower.name + " and " + (highlights.length -1).toString() + " others "),

    ],),

        ],),
      new Padding(padding: EdgeInsets.only(top: 10.0)),
      new Container(height: 0.25, width: double.infinity, color: const Color.fromARGB(115, 0, 0, 0),)
    ],);

  }

  // This method returns a column displaying the avatars and
  // information about who just liked our tweet

  Widget _buildLikedYourPics (BuildContext context, int index) {
    
    List<Widget> avatarList = [];
    //for (int index =0; index<whoFollowed.length; index++) {
    User follower = likesRecentPic[index];

    for (follower in likesRecentPic) {
      avatarList.add(
        new CircleAvatar(backgroundImage: AssetImage(follower.avatarUrl),radius: 20.0,),
      );
    }
    //}
    return new
    Column(children: <Widget>[
      new Padding(padding: EdgeInsets.only(top: 10.0)),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Padding(child: Icon(Icons.favorite, color: Colors.red,), padding: EdgeInsets.only(right: 10.0, left: 40.0),),

          new
          Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(children: avatarList),
              new Padding(padding: EdgeInsets.only(bottom: 5.0)),

    new RichText(
    text: new TextSpan(
    style: DefaultTextStyle.of(context).style,
    children: <TextSpan>[
    new TextSpan(text: likesRecentPic[0].name + " and " + likesRecentPic[1].name, style: new TextStyle(fontWeight: FontWeight.bold)),
    new TextSpan(text: ' liked your tweet' ),
    //new TextSpan(text: likesRecentPic[0].likedTweet)
    ],
    ),
    ),
              new Container(child:
              Text(likesRecentPic[0].likedTweet, softWrap: true,
                style: new TextStyle(color: Colors.black54),),
                alignment: Alignment.center, width: 200.0, )
            ],),

        ],),
      new Padding(padding: EdgeInsets.only(top: 10.0)),
      new Container(height: 0.25, width: double.infinity, color: Colors.black45,)
    ],);
  }

  /// The _buildAll widget is responsible for displaying a
  /// Column of the three different notification types we are prototyping
  /// It returns a column with the three widgets we already created
  Widget _buildAll(BuildContext context, int index){

    return

      new Column(children: <Widget>[


        _buildWhoFollowed(context, index),
        _buildLikedYourPics(context, index),
        _buildHighlights(context, index),


      ],);
  }

}
