// With love by ©Ray Okaah - RayOkaah.me | RayOkaah.com | flutterengineer.com | Twitter: @RaysCode | Email: rayokaah@gmail.com

abstract class Tweet{} // This is an Abstract class
///An abstract class like this will allow us create a type of tweet.
/// This will allow us to know what kind of tweet is being entered by our user.
/// Such that if a tweet contains only 1 image, we would know how to display it,
/// and if a tweet contains 3 Tweets, we would also have a different view
/// properly defined to handle 3 tweets and so on.
/// Now we are going to create 5 other classes that will implement our abstract class
/// just like described above.

///Ideally we would want to pass a "user" class to all the classes below
///But instead we will just use variables inorder to keep this less complex,
/// and the classes as independent as possible.

/// This class below will handle tweets with only text and no image
class TweetWithTextOnly implements Tweet {
  String textInput, retweets, likes, avatar, name, handle;

  TweetWithTextOnly({
    required this.textInput, // The tweet's text content.
    required this.retweets, // The number of retweets a particular tweet has.
    required this.likes, // The number of likes, a particular tweet has.
    required this.avatar, // the avatar of the user that owns a tweet.
    required this.name, // The name of the tweet's owner (user)
    required this.handle // The tweeter handle of the tweets owner (user).
  });
}

// This class will describe tweets with a text and only 1 image
class TweetWithImage1 implements Tweet{
  String textInput, retweets, likes, imageUrl, avatar, name, handle;

  TweetWithImage1({
    required this.textInput, // The tweet's text content.
    required this.retweets, // The number of retweets a particular tweet has.
    required this.likes, // The number of likes, a particular tweet has.
    required this.imageUrl, //The path (url) to an Image used in a tweet.
    required this.avatar,// the avatar of the user that owns a tweet.
    required this.name, // The name of the tweet's owner (user)
    required this.handle// The tweeter handle of the tweets owner (user).
  });
}

// This class will describe tweets with text and two images
class TweetWithImage2 implements Tweet{
  String textInput, retweets, likes, imageUrl1, imageUrl2, avatar, name, handle;

  TweetWithImage2({
    required this.textInput, // The tweet's text content.
    required this.retweets, // The number of retweets a particular tweet has.
    required this.likes, // The number of likes, a particular tweet has.
    required this.imageUrl1, //The path (url) to the first Image used in a tweet.
    required this.imageUrl2, //The path (url) to the second Image used in a tweet.
    required this.avatar, // the avatar of the user that owns a tweet.
    required this.name, // The name of the tweet's owner (user)
    required this.handle // The tweeter handle of the tweets owner (user).
  });
}

// This class will describe tweets with text and three images
// This class will describe tweets with text and four images
