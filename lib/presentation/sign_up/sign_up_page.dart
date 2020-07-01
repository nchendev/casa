import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lowkey/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:lowkey/presentation/sign_up/widgets/sign_up_form.dart';

import '../../injection.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignUpForm(),
      ),
    );
  }
}
