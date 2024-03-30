// With love by ©Ray Okaah - RayOkaah.me | RayOkaah.com | flutterengineer.com | Twitter: @RaysCode | Email: rayokaah@gmail.com

/// We will create a model class called user
/// which we shall use to store and retrieve information from our list
class User {
  //We define our variables for this class
  String name, avatarUrl, likedTweet;
  //We create our constructor for this class and instantiate our variables
  User({
    required this.name, // The name of the user.
    required this.avatarUrl, // The path (Url) to our user's profile avatar.
    required this.likedTweet // A random tweet of mine that this user likes.
    /// This is just a variable to enable us demonstrate In our notifications screen,
    /// Multiple people liking our picture.
  });
}
/// Model Class For storing and retrieving the trends in our search screen.
class Trends{
  String title, tweetsNo;
  Trends({
    required this.title, // The title of the trand eg"#Happy"
    required this.tweetsNo // The number of tweets that has been made on this trend
  });
}
// Model Class for storing and retrieving messages in our MessagesScreen
class MessageModel{
  //We define our variables for this class
  String senderName, senderHandle, senderAvatar, messageShort, time;
//We create our constructor for this class and instantiate our variables
  MessageModel({
    required this.senderName, // The name of the user sending the message.
    required this.senderHandle, // The twitter handle of the user sending the message.
    required this.senderAvatar, // The Url (Path) to the users avatar image.
    required this.messageShort, // Ideally the short message version
    required this.time // The time the message was sent or received
});

}