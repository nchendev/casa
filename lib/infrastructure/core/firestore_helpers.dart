import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lowkey/domain/auth/i_auth_facade.dart';
import 'package:lowkey/domain/core/errors.dart';
import 'package:lowkey/injection.dart';

extension FirestoreX on Firestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return Firestore.instance
        .collection('users')
        .document(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get roomCollection => collection('rooms');
  CollectionReference get roommateCollection => collection('roommates');
}
