part of 'onboard_cubit.dart';

class OnboardState extends Equatable {
  final int pageIndex;

  const OnboardState({this.pageIndex = 0});

  @override
  List<Object> get props => [pageIndex];
}
