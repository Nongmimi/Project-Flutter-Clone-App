// With love by ©Ray Okaah - RayOkaah.me | RayOkaah.com | flutterengineer.com | Twitter: @RaysCode | Email: rayokaah@gmail.com
import 'package:flutter/material.dart';
import 'package:twitter_clone/models/TwitterModel.dart';

/// This is the Home screen of our app
/// It will display a list of tweets on your Timeline just like you would see on Twitter
/// Below its a stateless Widget, it i
class HomeScreen extends StatelessWidget { //Our HomeScreen is a stateless widget
// and that's because it does not accept user input or change
// from an external source and hence do not need to rebuild.

/// We need a data source to store all the tweets to be displayed on our Timeline
  /// For the scope of this, we are using a List.
  /// A list allows us to store data objects and retrieve them by their index on that list.
  /// We will hence create a list Called allTweets, of type "Tweet".
  /// So this will be a list of our initially created abstract class called Tweet,
  /// And logically, we would title this list of Tweet, "allTweets".

  final List<Tweet> allTweets = [

    TweetWithImage1(textInput: "เมียบอกให้ลง ไม่งั้นนอนนอกบ้าน #รีทวิตให้ถึง300",
        retweets: "273", likes: "560", imageUrl: "assets/images/รูปคู่แฟนพี่เก๋า.jpg", avatar: "assets/images/พี่เก๋า.jpg", name: "พี่เก๋า", handle: "@peephakao"),

    TweetWithImage1(textInput: "สวัสดีวันอังคารค่ะ", 
        retweets: "12k", likes: "14k", imageUrl: "assets/images/สวัสดี.jpg", avatar: "assets/images/สวัสดีโพส.jpg", name: "marie", handle: "@nuumarie"),

    TweetWithTextOnly(textInput: "ใครตดในห้องวะ เหม็นฉิบเป๋ง #ห้อง603",
        retweets: "20", likes: "14", avatar: "assets/images/พี่เหม้น.jpg", name: "manuty", handle: "@manloveyou3000"),

    TweetWithImage1(textInput: "หน้าสด โนฟิลเตอร์ #รวย #สวยใส",
        retweets: "2k", likes: "4.8k", imageUrl:"assets/images/สุมารีโพส.jpg", avatar: "assets/images/สุมารีโปรฟาย.jpg", name: "สุมารี", handle: "@sumariejubjub"),

    TweetWithImage2(textInput: "น้อง พี่บอกว่าอย่าสาดน้ำ พี่ต้องไปทำงานนนนน",
        retweets: "5.2k", likes: "2.1k", imageUrl1: "assets/images/พี่เปียก.jpg", imageUrl2: "assets/images/พี่เปียก2.jpg", avatar: "assets/images/พี่เปียกโปรฟาย.jpg", name: "ปื๊ดnumber1", handle: "@toknammailaitokjaijangloei" ),

    TweetWithTextOnly(textInput: "นอยอะ ร้านหนมเปียกไม่เปิด นอยๆๆๆๆ",
        retweets: "359", likes: "1k", avatar: "assets/images/พี่แน่น.webp", name: "jeedrid", handle: "@jjjjjrid"),

    TweetWithImage1(textInput: "We are the gangsters", 
        retweets: "17.5k", likes: "39.8k", imageUrl: "assets/images/แก๊ง.jpg", avatar: "assets/images/ชาวแก๊งโปรฟาย.jpg", name: "Rayji", handle: "@RaysCode"),

    TweetWithTextOnly(textInput: "ตื่นแต่เช้า จิบกาแฟ เพื่อมาทำงานที่เรารัก.... แค่นี้ก็มีความสุขแล้ว",
        retweets: "13.5k", likes: "4.9k", avatar: "assets/images/สมสักโปรฟาย.jpg", name: "คนที่ทำงานหนักเพื่อคุณ", handle: "@somsakzaza"),

    TweetWithTextOnly(textInput: "รับดูดวงจ้า ข้อละ20บาท ดูได้ทุกเรื่อง ดูรีวิวได้ แม่นสุดใน3โลก #ดูดวง #ไพ่ทาโร่ #ดวง",
        retweets: "43.5k", likes: "4.9k", avatar: "assets/images/ทรงเสพ.webp", name: "พ่อหมอแมวดำลายขาวขาวลายดำ", handle: "@myhoratarot"),

    TweetWithImage1(textInput: "ขออนุญาตลาบวชครับ #อนุโมทนาสาธุ99",
        retweets: "999", likes: "9.9k", imageUrl: "assets/images/หลวงพี่.jpg", avatar: "assets/images/หลวงพี่โปรฟาย.jpg", name: "GGG", handle: "@geewonbin"),

    TweetWithTextOnly(textInput: "ชีวิตมีขึ้นมีลง เพราะฉนั้นจงนอนซะ",
        retweets: "3.5k", likes: "986", avatar: "assets/images/สู้.jpg", name: "winwin", handle: "@winforever"),

    TweetWithTextOnly(textInput: "อยากดูพี่นาค4 หาคนดูด้วยค่ะ",
        retweets: "11k", likes: "8k", avatar: "assets/images/luv.jpg", name: "เลิ้บรัก", handle: "@lovelukeiei"),

    TweetWithImage1(textInput: "หนุ่มฟ้อ หล่อเฟี้ยว มีผมคนเดียว รูปหล่อจริงๆนะเนี้ยยย", 
        retweets: "19k", likes: "8k", imageUrl: "assets/images/หล่อเฟี้ยว.webp", avatar: "assets/images/หล่อเฟี้ยวโปร.jpg", name: "ระวังตกหลุมรักคนหล่อ", handle: "@tanktong"),

    TweetWithImage1(textInput: "ไม่อยากรับรู้ ว่าเธอไม่รับรัก", 
        retweets: "5k", likes: "3.8k", imageUrl: "assets/images/ยิ้มโพส.webp", avatar: "assets/images/ยิ้ม.jpg", name: "รอยยิ้ม", handle: "@smileee"),

        
  ];

  HomeScreen({super.key});

/// This is the build method for this HomeScreen Class.
  /// It returns everything that should displayed as part of our user interface.
  @override
  Widget build(BuildContext context) {

    return Scaffold( // returns a material scaffold which forms the backbone / skeleton of our screen.
      body:
          /// The body of our Home Screen would be a ListView builder
      /// This is responsible for generating our list of tweets.
      ListView.builder(
          itemBuilder: buildTweet, // The actual widget responsible for what gets displayed
        itemCount: allTweets.length, // The number of items the list should display
      ),
    );

  } // Ends our Screens build method.


  /// Now our UI for the HomeScreen will be broken down into 4 parts.
  /// 1. The Top (The Title).
  /// 2. The Content (Text and image(s) )
  /// 3. The Bottom ( Bottom buttons eg; like, retweet, etc)
  ///


  /// The _buildTitle method is responsible for building the components
  /// that make the Title part of our screen.
  /// Here it takes in two parameters namely;
  /// 1. name; which is the name of the user retrieved from our allTweets list
  /// 2. Handle; which is the Twitter handle of same user retrieved from our allTweets data source.
  Widget _buildTitle(String name, handle){
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(children: <Widget>[
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold),),
          Text (handle),
        ],),

      ],
    );
  }

  /// The _buildTweetContent method is responsible
  /// for building what makes up our tweet tile, including the title, bottom etc.
  /// This method will accept three parameters, namely;
  /// 1. The material BuildContext
  /// 2. Remember in our model class we had several types of Tweets.
  /// So the second variable is called meTweet and is used to denote a tweet with a variable type.
  /// 3. The 3rd parameter is called picToBuild and tells this our _buildTweetContent method
  /// exactly how many pictures it should build for.
  Widget _buildTweetContent(BuildContext context, var meTweet, Widget picToBuild){
    return Column(
        children: <Widget>[
          Row(crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(margin: const EdgeInsets.all(10.0),child:CircleAvatar(radius: 30.0, backgroundImage: AssetImage(meTweet.avatar),),),
              Flexible(
                flex: 1,
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.only(bottom: 2.0)),
                    _buildTitle(meTweet.name, meTweet.handle),
                    const Padding(padding: EdgeInsets.only(bottom: 2.0)),
                    Text(meTweet.textInput, style: Theme.of(context).textTheme.bodyMedium,),
                    const Padding(padding: EdgeInsets.only(bottom: 5.0)),
                    picToBuild,
                    _buildBottomButtons(context, meTweet.retweets, meTweet.likes),
                  ],
                ),)
            ],),
          Container(height: 0.25, width: double.infinity, color: Color.fromARGB(201, 89, 18, 93),)
        ]);
  }

  /// This is the _buildBottomButtons method,
  /// responsible for building the button buttons of our Tweet tile.

  Widget _buildBottomButtons(BuildContext context, String retweets, String likes){
    return Container(margin: const EdgeInsets.only(top: 10.0, bottom: 5.0, right: 30.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[

            
            
              const Icon(Icons.messenger_outline, size: 15.0,),
              
            // new Image.asset("images/reply.png", height: 15.0, width: 15.0,),

            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                //Icon(Icons.loop, size: 15.0,),
                Image.asset("images/retweet.png", height: 20.0, width: 20.0,),
                // Above, decided to use a png image in place of the initial material icon.
                const Padding(padding: EdgeInsets.only(right: 5.0)),
                Text(retweets)
              ],),

            Row(children: <Widget>[
              const Icon(Icons.favorite_border, size: 15.0,),
              const Padding(padding: EdgeInsets.only(right: 5.0)),
              Text(likes)
            ],),

            const Icon(Icons.share, size: 15.0,)
          ],
        ));
  }
/// You should remember our _buildTweetContent method requires a parameter
  /// called picToBuild. This parameter tells it how many pictures to build for.
  /// It returns a widget.

/// _noImage method returns a build method for pics with no image.
  Widget _noImage(){
    return const Padding(padding: EdgeInsets.only(top: 0.01));
  }
/// _oneImage method returns a build method for pics with One Image.
  Widget _oneImage(var singleTweet){
    return Container(padding: const EdgeInsets.only(right: 10.0),child: Image.asset(singleTweet.imageUrl),);
  }
  /// _twoImages method returns a build method for pics with Two Images.
  Widget _twoImages(var singleTweet){
    return Row(
        mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(flex: 1,child:  Image.asset(singleTweet.imageUrl1, fit: BoxFit.contain,),),
            Expanded(flex: 1,child:  Image.asset(singleTweet.imageUrl2, fit: BoxFit.contain,),),
            const Padding(padding: EdgeInsets.only(right: 10.0))
          ]);
  }
  /// _threeImages method returns a build method for pics with three Images
  Widget _threeImages(var singleTweet){
    return Row (
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[

        Column(children: <Widget>[ Image.asset(singleTweet.imageUrl1, fit: BoxFit.cover, height: 200.0, width: 150.0, ),],),

        Column(children: <Widget>[
          Image.asset(singleTweet.imageUrl2, fit: BoxFit.contain, height: 100.0),
          Image.asset(singleTweet.imageUrl3, fit: BoxFit.contain, height: 100.0),
          const Padding(padding: EdgeInsets.only(right: 10.0))

        ],),


      ],);
  }
  /// _fourImages method returns a build method for pics with four Images
  Widget _fourImages(var singleTweet){
    return Column(children: <Widget>[
    Row(//mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Expanded(flex: 1,child:  Image.asset(singleTweet.imageUrl1, fit: BoxFit.cover, height: 200.0,),),
          Expanded(flex: 1,child:  Image.asset(singleTweet.imageUrl2, fit: BoxFit.cover, height: 200.0,),),
          const Padding(padding: EdgeInsets.only(right: 10.0))
        ]),

    Row(mainAxisSize: MainAxisSize.min,
    children: <Widget>[
    Expanded(flex: 1,child:  Image.asset(singleTweet.imageUrl3, fit: BoxFit.cover, height: 200.0, ),),
    Expanded(flex: 1,child:  Image.asset(singleTweet.imageUrl4, fit: BoxFit.cover, height: 200.0),),
    const Padding(padding: EdgeInsets.only(right: 10.0))
    ]),
    ],);
  }


  /// Once we have built our UI we still have a challenge.
  /// How can we tell which tweet is single image and which is for 3 images?
  /// Now here's what we do
  /// we create this buildTweet method that returns a widget,
  /// we then work with the abstract class and Tweet models
  ///
  /// What we do here is straight foward, we control what the buildTweet return HomeScreen build method.
  /// So if a tweet from our list is of type 3 images, then build tweet should only return a view made to handle 3 images.
  /// It should do same for other types of tweets as well.

  Widget buildTweet(BuildContext context, int index){
    Tweet singleTweet = allTweets[index];


    if (singleTweet is TweetWithTextOnly){

      return _buildTweetContent(context, singleTweet, _noImage());

    }
    else if (singleTweet is TweetWithImage1){
      return _buildTweetContent(context, singleTweet, _oneImage(singleTweet));
    }

    else if (singleTweet is TweetWithImage2){
      return _buildTweetContent(context, singleTweet, _twoImages(singleTweet));

    }
    else {
      return const Text("No Tweet found");
    }

  }

}