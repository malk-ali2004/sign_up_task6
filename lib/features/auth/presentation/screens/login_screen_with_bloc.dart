import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/validator/validators.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_event.dart';
import '../bloc/login_state.dart';

class LoginScreenWithBloc extends StatelessWidget {
  const LoginScreenWithBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          final bloc = context.read<LoginBloc>();
          return Scaffold(
            appBar: AppBar(title: const Text('Login')),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: bloc.formKey,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Email'),
                      validator: Validators.validateEmail,
                      onChanged: (value) => bloc.add(LoginEmailChanged(value)),
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      decoration: const InputDecoration(labelText: 'Password'),
                      obscureText: true,
                      validator: Validators.validatePassword,
                      onChanged: (value) => bloc.add(LoginPasswordChanged(value)),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        bloc.add(LoginSubmitted());
                      },
                      child: const Text('Login'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
