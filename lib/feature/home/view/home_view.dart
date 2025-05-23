import 'package:architecture_template/feature/home/bloc/home_bloc.dart';
import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:architecture_template/feature/not_bloc_page/loading_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'widgets/home_view_app_bar.dart';

///Home View
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with HomeViewMixin {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state.homeStatus == HomeStatus.loading) {
          return const LoadingPageView();
        } else {
          return Scaffold(
            appBar: const _HomeViewAppBar(),
            body: ListView.builder(
              itemCount: state.userList!.length,
              itemBuilder: (context, index) {
               
                return Card(
                  child: ListTile(
                    title: Text(state.userList![index].title ?? ''),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
