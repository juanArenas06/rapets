

class ContentMessage{
   final String userName,lastMessage,image;
   final bool  isRead;
  

  ContentMessage({
    required this.userName,
    required this.lastMessage,
    required this.image,
    required this.isRead
});

  static ContentMessage fromJson(json)=> ContentMessage(
    userName: json['userName']??'', 
    lastMessage: json['lastMessage']??'', 
    image: json['image']??'',
    isRead: json['isRead']??''
     );
}











