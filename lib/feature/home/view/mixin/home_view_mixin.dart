import 'package:architecture_template/feature/home/bloc/home_bloc.dart';
import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


///HomeViewMixin
mixin HomeViewMixin on State<HomeView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const HomeFetchUser(),);
  }
}
