

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/auth/presentation/screens/login_screen_with_bloc.dart';
import 'features/auth/presentation/screens/signup_screen.dart';
import 'features/auth/presentation/bloc/signup_bloc.dart';
import 'features/auth/presentation/bloc/login_bloc.dart';
import 'core/themes/app_themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Auth App',
      theme: AppThemes.lightTheme,
      initialRoute: '/login',
      routes: {
        '/login': (context) => BlocProvider(
              create: (_) => LoginBloc(),
              child: const LoginScreenWithBloc(),
            ),
        '/signup': (context) => BlocProvider(
              create: (_) => SignupBloc(),
              child: const SignupScreen(),
            ),
      },
    );
  }
}






