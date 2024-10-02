import 'package:dartz/dartz.dart';
import 'package:musicplayer/core/usecase/usecase.dart';
import 'package:musicplayer/data/models/auth/create_user_req.dart';
import 'package:musicplayer/domain/repository/auth/auth.dart';
import 'package:musicplayer/service_locator.dart';

class SignupUseCase implements UseCase<Either, CreateUserReq> {
  @override
  Future<Either> call({CreateUserReq? params}) {
    return sl<AuthRepository>().signup(params!);
  }
}
