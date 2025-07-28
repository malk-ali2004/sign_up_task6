// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'features/auth/presentation/screens/signup_screen.dart';
// import 'core/themes/app_themes.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'ITI Task',
//       debugShowCheckedModeBanner: false,
//       theme: AppThemes.lightTheme,
//       home: const SignupScreen(),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/auth/presentation/screens/signup_screen.dart';
import 'features/auth/presentation/bloc/signup_bloc.dart';
import 'core/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup App',
      theme: AppThemes.lightTheme,
      home: BlocProvider(
        create: (_) => SignupBloc(),
        child: const SignupScreen(),
      ),
    );
  }
}
