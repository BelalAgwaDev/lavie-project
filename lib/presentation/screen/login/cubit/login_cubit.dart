import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/useCase/login_use_case.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase? _loginUseCase;

  final TextEditingController loginEmail =TextEditingController();
  final TextEditingController loginPassword =TextEditingController();
  final TextEditingController firstName=TextEditingController() ;
  final TextEditingController lastName =TextEditingController();
  final TextEditingController registerEmail=TextEditingController() ;
  final TextEditingController registerPassword=TextEditingController() ;
  final TextEditingController registerVisiblePassword =TextEditingController();
  final loginFormKey = GlobalKey<FormState>();
  final registerFormKey = GlobalKey<FormState>();




  LoginCubit(this._loginUseCase) : super(LoginInitial());
  static LoginCubit get (context)=>BlocProvider.of(context);




  void login() async {
    // inputState.add(LoadingState(
    //     stateRenderType: StateRenderType.popupLoadingState, message: ''));
    print("is loading");
    emit(LoginLoading());

    (await _loginUseCase!.execute(
        LoginUseCaseInput(loginEmail.text, loginPassword.text)))
        .fold(
            (failure) => {
          // left -> failure
          // inputState.add(ErrorState(
          //   stateRenderType: StateRenderType.popupErrorState,
          //   message: failure.message,
          // )),
         print("is error"),
        emit(LoginError()),
        }, (data) {
      //right -> data(success)

      print("is success");
      emit(LoginSuccess());


    });
  }






}
