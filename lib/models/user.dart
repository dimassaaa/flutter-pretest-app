class User {
  final String username;
  final String email;

  User({required this.username, required this.email});

  // Fungsi untuk membuat User dari JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      username: '${json['firstName']} ${json['lastName']}', // Gabungkan firstName dan lastName
      email: json['email'],
    );
  }
}
