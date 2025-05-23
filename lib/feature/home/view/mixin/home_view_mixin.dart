import 'package:architecture_template/feature/home/view/home_view.dart';
import 'package:architecture_template/products/model/user_model.dart';
import 'package:architecture_template/products/service/login_service_manager.dart';
import 'package:architecture_template/products/state/get_it/get_it.dart';
import 'package:flutter/material.dart';
mixin HomeViewMixin on State<HomeView> {
  final loginServiceManager = getIt.get<LoginServiceManager>();

  List<User> userList = [];

  @override
  void initState() {
    super.initState();
    _fetchUsers();
  }

  Future<void> _fetchUsers() async {
    userList = await loginServiceManager.users();
    setState(() {});
  }
}
