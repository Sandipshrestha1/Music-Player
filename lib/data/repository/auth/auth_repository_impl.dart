import 'package:dartz/dartz.dart';
import 'package:musicplayer/data/models/auth/create_user_req.dart';
import 'package:musicplayer/data/sources/auth/auth_firebase_service.dart';
import 'package:musicplayer/domain/repository/auth/auth.dart';
import 'package:musicplayer/service_locator.dart';

class AuthRepositoryImpl extends AuthRepository {
  @override
  Future<void> signin() {
    throw UnimplementedError();
  }

  @override
  Future<Either> signup(CreateUserReq createUserReq) async {
    return await sl<AuthFirebaseService>().signup(createUserReq);
  }
}
