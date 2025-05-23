// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bloc.dart';

enum HomeStatus { init, loading, success, error }

class HomeState extends Equatable {
  final HomeStatus homeStatus;
  final List<User>? userList;

  const HomeState({required this.homeStatus, required this.userList});

  HomeState copyWith({
    HomeStatus? homeStatus,
    List<User>? userList,
  }) {
    return HomeState(
      homeStatus: homeStatus ?? this.homeStatus,
      userList: userList ?? this.userList,
    );
  }

  @override
  List<Object?> get props => [homeStatus, userList];
}
