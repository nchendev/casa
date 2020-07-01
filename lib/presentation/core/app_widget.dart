import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lowkey/application/auth/auth_bloc.dart';
import 'package:lowkey/presentation/routes/router.gr.dart';
import 'package:lowkey/presentation/sign_in/sign_in_page.dart';
import 'package:lowkey/presentation/sign_up/sign_up_page.dart';

import '../../injection.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        )
      ],
      child: MaterialApp(
        title: 'casa',
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator(router: Router()),
        theme: ThemeData.light().copyWith(
          primaryColor: Colors.blue[100],
        ),
      ),
    );
  }
}
