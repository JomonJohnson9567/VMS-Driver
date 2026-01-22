import 'package:vms_driver/features/onboarding/data/datasources/onboarding_local_data_source.dart';
import 'package:vms_driver/features/onboarding/data/repositories/onboarding_repository_impl.dart';
import 'package:vms_driver/features/onboarding/domain/usecases/complete_onboarding.dart';
import 'package:vms_driver/features/onboarding/presentation/cubit/onboard_cubit.dart';

class ServiceLocator {
  static OnboardCubit get onboardCubit {
    final dataSource = OnboardingLocalDataSourceImpl();
    final repository = OnboardingRepositoryImpl(remoteDataSource: dataSource);
    final useCase = CompleteOnboarding(repository);
    return OnboardCubit(completeOnboardingUseCase: useCase);
  }
}
