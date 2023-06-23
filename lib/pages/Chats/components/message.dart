

class Message{
   final String text,isSendBy,isSendTo;
   final DateTime date;
    final bool isSendeByMe;


    Message({
   required this.text,
   required this.isSendBy,
   required this.isSendTo,
  required this.date,
  required this.isSendeByMe
});

static Message fromJson(json)=> Message(

  text: json['text']??'',
  isSendBy: json['isSendBy']??'',
   isSendTo: json['isSendTo']??'',
   date: DateTime.parse(json['date'] ?? ''),
   isSendeByMe: json['isSendByMe']??'',

);



}

