import 'package:get_it/get_it.dart';
import 'package:musicplayer/data/repository/auth/auth_repository_impl.dart';
import 'package:musicplayer/data/sources/auth/auth_firebase_service.dart';
import 'package:musicplayer/domain/repository/auth/auth.dart';
import 'package:musicplayer/domain/usecase/auth/signin.dart';
import 'package:musicplayer/domain/usecase/auth/signup.dart';

final sl = GetIt.instance;
Future<void> initializeDependencies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
}
