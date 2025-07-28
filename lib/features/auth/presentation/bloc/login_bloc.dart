


import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/validator/validators.dart';
import 'login_event.dart';
import 'login_state.dart';
import 'package:flutter/material.dart'; // مهم

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final formKey = GlobalKey<FormState>();

  LoginBloc() : super(LoginState.initial()) {
    on<LoginEmailChanged>((event, emit) {
      final newState = state.copyWith(
        email: event.email,
        isValid: _isFormValid(event.email, state.password),
      );
      emit(newState);
    });

    on<LoginPasswordChanged>((event, emit) {
      final newState = state.copyWith(
        password: event.password,
        isValid: _isFormValid(state.email, event.password),
      );
      emit(newState);
    });

    on<LoginSubmitted>((event, emit) {
      if (formKey.currentState!.validate()) {
        // 
      }
    });
  }

  bool _isFormValid(String email, String password) {
    return Validators.validateEmail(email) == null &&
        Validators.validatePassword(password) == null;
  }
}
