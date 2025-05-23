import 'package:architecture_template/feature/home/view/mixin/home_view_mixin.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const _HomeViewAppBar(),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          final user = userList[index];
          return Card(
            child: ListTile(
              title: Text(user.title ?? ''),
            ),
          );
        },
      ),
    );
  }
}
