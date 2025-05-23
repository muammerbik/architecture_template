import 'dart:async';

import 'package:architecture_template/products/model/user_model.dart';
import 'package:architecture_template/products/service/login_service_manager.dart';
import 'package:architecture_template/products/state/get_it/get_it.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'home_event.dart';
part 'home_state.dart';

final class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final loginServiceManager = getIt.get<LoginServiceManager>();
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
      final response = await loginServiceManager.users();

      emit(
        state.copyWith(homeStatus: HomeStatus.success, userList: response),
      );
    } catch (e) {
      emit(
        state.copyWith(homeStatus: HomeStatus.error),
      );
    }
  }
}
