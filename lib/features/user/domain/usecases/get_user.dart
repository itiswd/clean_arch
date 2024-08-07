import 'package:clean_arch/core/params/params.dart';
import 'package:clean_arch/features/user/domain/repos/user_repo.dart';

class GetUser {
  final UserRepo userRepo;

  GetUser({required this.userRepo});
  call({
    required UserParams params,
  }) {
    return userRepo.getUser(params: params);
  }
}
