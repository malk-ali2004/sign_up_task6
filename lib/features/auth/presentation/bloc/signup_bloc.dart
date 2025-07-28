

import 'package:flutter_bloc/flutter_bloc.dart';
import 'signup_event.dart';
import 'signup_state.dart';


class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<SignupSubmitted>((event, emit) async {
      emit(SignupLoading());
      await Future.delayed(const Duration(seconds: 2)); 

      if (event.email.contains('@')) {
        emit(SignupSuccess());
      } else {
        emit(SignupFailure('Invalid email'));
      }
    });
  }
}
