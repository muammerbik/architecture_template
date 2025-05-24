part of 'home_bloc.dart';

///HomeEvent
sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

///HomeFetchUser
class HomeFetchUser extends HomeEvent {
  const HomeFetchUser();
  @override
  List<Object> get props => [];
}
