class User{

  final String title,
          firstName,
          lastName,
          gender,
          email,
          phone,
          picture;

  User({required this.title, required this.firstName,
       required this.lastName, required this.gender,
       required this.email, required this.phone,
       required this.picture});

  factory User.fromJson(Map<String, dynamic> json){
      return User(
        title: json['name']['title'],
        firstName: json['name']['first'],
        lastName: json['name']['last'],
        gender: json['gender'],
        email: json['email'],
        phone: json['phone'],
        picture: json['picture']['thumbnail']
      );
  }

}