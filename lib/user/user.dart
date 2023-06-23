class User {
  final String userImage,userName,age,city,country,phoneNumber;
  

  User({
    required this.userImage,
    required  this.userName,
    required this.age,
    required this.city,
    required this.country,
    required this.phoneNumber
  });

  static User fromJson(json)=> User(
    userImage: json['userImage']??'',
     userName: json['userName']??'',
     age: json['age']??'',
     city: json['city']??'',
     country: json['country']??'',
     phoneNumber: json['phoneNumber']??''
     );
}