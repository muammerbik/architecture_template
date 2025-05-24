import 'dart:async';

import 'package:architecture_template/products/data/model/user_model.dart';
import 'package:architecture_template/products/data/repository/repository.dart';
import 'package:architecture_template/products/data/service/login/login_service_manager.dart';
import 'package:architecture_template/products/state/get_it/get_it.dart';
import 'package:architecture_template/products/utility/results.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

final class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final repository = getIt.get<Repository>();
  HomeBloc()
      : super(
          const HomeState(homeStatus: HomeStatus.init, userList: []),
        ) {
    on<HomeFetchUser>(_homeFetchUser);
  }

  Future<void> _homeFetchUser(
    HomeFetchUser event,
    Emitter<HomeState> emit,
  ) async {
    try {
      emit(
        state.copyWith(homeStatus: HomeStatus.loading),
      );
      
      final result = await repository.userRepository();
      
      if (result is Success<List<User>>) {
        emit(
          state.copyWith(homeStatus: HomeStatus.success, userList: result.data),
        );
      } else if (result is Error<List<User>>) {
        emit(
          state.copyWith(homeStatus: HomeStatus.error),
        );
      }
    } catch (e) {
      emit(
        state.copyWith(homeStatus: HomeStatus.error),
      );
    }
  }
}
