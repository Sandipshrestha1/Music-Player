import 'package:dartz/dartz.dart';
import 'package:musicplayer/core/usecase/usecase.dart';
import 'package:musicplayer/data/models/auth/signin_user_req.dart';
import 'package:musicplayer/domain/repository/auth/auth.dart';
import 'package:musicplayer/service_locator.dart';

class SigninUseCase implements UseCase<Either, SigninUserReq> {
  @override
  Future<Either> call({SigninUserReq? params}) async {
    return sl<AuthRepository>().signin(params!);
  }
}
