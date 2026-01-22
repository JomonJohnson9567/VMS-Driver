import 'package:vms_driver/features/onboarding/data/datasources/onboarding_local_data_source.dart';
import 'package:vms_driver/features/onboarding/domain/repositories/onboarding_repository.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingLocalDataSource remoteDataSource;

  OnboardingRepositoryImpl({required this.remoteDataSource});

  @override
  Future<void> completeOnboarding() async {
    await remoteDataSource.cacheOnboarding();
  }
}
