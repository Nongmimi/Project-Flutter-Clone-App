// With love by ©Ray Okaah - RayOkaah.me | RayOkaah.com | flutterengineer.com | Twitter: @RaysCode | Email: rayokaah@gmail.com
import 'package:flutter/material.dart';
import 'package:twitter_clone/models/OtherModels.dart';

/// This is the Messages Screen of our app,
/// It will display a list of messages retrieved from our data source (a List)
class MessagesScreen extends StatelessWidget {

  /// We need a data source to store all our messages
  /// For the scope of this, we are using a List.
  /// A list allows us to store data objects and retrieve them by their index on that list.
  /// We will hence create a list Called messages, of type "MessageModel".
  /// So this will be a list of our initially created abstract class called Model,
  /// And logically, we would title this list of MessageModel, "messages".
final List<MessageModel> messages = [
  MessageModel(senderName: "ปื๊ดnumber1", senderHandle: "@toknammailaitokjaijangloei",messageShort: "พี่จำผมได้มั๊ยครับ..",
      time: "2 days ago", senderAvatar: "assets/images/พี่เปียก.jpg"),
  MessageModel(senderName: "สุมารี", senderHandle: "@sumariejubjub",messageShort: "ทำไรอยู่เตง ทำไมไม่ตอบเค้า",
      time: "2 days ago", senderAvatar: "assets/images/สุมารีโปรฟาย.jpg"),
  MessageModel(senderName: "จ้อดครับไม่ใช่จอด", senderHandle: "@jodjee", messageShort: "เป็นไงบ้างวะเพื่อน", 
      time: "3 days ago", senderAvatar: "assets/images/จ้อด.jpg"),
  MessageModel(senderName: "jibjib", senderHandle: "@jibjibjibbbb",messageShort: "ฝันดีคร่าสุดหล่อ", 
      time: "4 days ago", senderAvatar: "assets/images/จิ้บ.jpg"),
  MessageModel(senderName: "b boy", senderHandle: "@boylveu",messageShort: "อิอิ",
      time: "17/3/67", senderAvatar: "assets/images/คาวบอย.jpg"),
  MessageModel(senderName: "เลิ้บรัก", senderHandle: "@lovelukeiei",messageShort: "พี่นี่ตลกจัง55555",
      time: "29/2/67", senderAvatar: "assets/images/luv.jpg"),
  MessageModel(senderName: "GGG", senderHandle: "@geewonbin",messageShort: "ผมลาบวชนะพี่",
      time: "5/2/67", senderAvatar: "assets/images/หลวงพี่.jpg"),
  MessageModel(senderName: "พ่อหมอแมวดำลายขาวขาวลายดำ", senderHandle: "@myhoratarot",messageShort: "ขอบคุณคับ อย่าลืมรีวิวให้พ่อหมอด้วยนะคับ",
      time: "29/1/67", senderAvatar: "assets/images/ทรงเสพ.webp"),
  MessageModel(senderName: "คนที่ทำงานหนักเพื่อคุณ", senderHandle: "@somsakzaza", messageShort: "มีให้ยืมสัก 200 มั้ยน้อง", 
      time: " 30/8/66 ", senderAvatar: "assets/images/สมสักโปรฟาย.jpg"),

];

/// This is the build method for this MessagesScreen Class.
/// It returns everything that should displayed as part of our user interface.
  @override
  Widget build(BuildContext context) {
    return new Scaffold( // returns a material scaffold which forms the backbone / skeleton of our screen
      body:
      // The body of our Home Screen would be a ListView builder
      /// This is responsible for generating our list of messages.
      ListView.builder(
      itemCount: messages.length,
      itemBuilder: _buildTile,
    )
    );
  }
/// This method _buildTile is responsible for building our message Tile
/// It will return a Column widget that contains a listTile and a line divider.
  Widget _buildTile(BuildContext context, int index){

    /// We create a MessageModel object  to represent a single MessageModel in our list
    /// We call it message. It will be used to retrieve MessageModels base on its index position in the list.
    MessageModel message = messages[index]; // We create a message object.
    /// When working with different text, inorder for you
    /// to give different portions of the text different text styles,
    /// we use a widget called RichText. This allows us to style our senderName,
    /// different from our senderHandle.
    Widget displaySender = new RichText( // Implement RichText and call it displaySender
      text: new TextSpan(
        children: <TextSpan> [
          new TextSpan(text: message.senderName, style: new TextStyle( color: Color.fromARGB(255, 147, 44, 176))),
          new TextSpan(text: " " + message.senderHandle, style: new TextStyle(color: Color.fromARGB(108, 70, 24, 94)), )
        ]
      ),
    );

    /// As initially mentioned, our _buildTile returns
    /// a Column widget that contains a listTile and a line divider.
    return new Column(children: <Widget>[
    ListTile(
      leading: new CircleAvatar(
        backgroundImage: AssetImage(message.senderAvatar),
      ),
      title: displaySender,
      subtitle: new Container(child: Text(message.messageShort, maxLines: 2,), padding: EdgeInsets.only(bottom: 10.0),),
      trailing: new Text(message.time),
      isThreeLine: false,
    ),
    // we create our line divider below using a container widget and setting the height to 0.25
    new Container(height: 0.25, width: double.infinity, color: Color.fromARGB(255, 127, 31, 159),)
    ],);
  }

}