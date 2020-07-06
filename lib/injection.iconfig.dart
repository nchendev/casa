// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:lowkey/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:lowkey/infrastructure/auth/firebase_auth_facade.dart';
import 'package:lowkey/domain/auth/i_auth_facade.dart';
import 'package:lowkey/infrastructure/room/room_repository.dart';
import 'package:lowkey/domain/room/i_room_repository.dart';
import 'package:lowkey/application/room/room_actor/room_actor_bloc.dart';
import 'package:lowkey/application/room/room_watcher/room_watcher_bloc.dart';
import 'package:lowkey/application/auth/sign_in_form/bloc/sign_in_form_bloc.dart';
import 'package:lowkey/application/auth/auth_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(g<FirebaseAuth>(), g<GoogleSignIn>()));
  g.registerLazySingleton<IRoomRepository>(
      () => RoomRepository(g<Firestore>()));
  g.registerFactory<RoomActorBloc>(() => RoomActorBloc(g<IRoomRepository>()));
  g.registerFactory<RoomWatcherBloc>(
      () => RoomWatcherBloc(g<IRoomRepository>()));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(g<IAuthFacade>()));
  g.registerFactory<AuthBloc>(() => AuthBloc(g<IAuthFacade>()));
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
