

abstract class SignupEvent {}

class SignupSubmitted extends SignupEvent {
  final String name;
  final String email;
  final String phone;
  final String password;

  SignupSubmitted({
    required this.name,
    required this.email,
    required this.phone,
    required this.password,
  });
}
