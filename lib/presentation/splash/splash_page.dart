import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lowkey/application/auth/auth_bloc.dart';
import 'package:lowkey/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
            initial: (_) {},
            authenticated: (_) {
              print('I am authenticated!');
            },
            unauthenticated: (_) => ExtendedNavigator.of(context)
                .pushReplacementNamed(Routes.signInPage));
      },
      child: Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
