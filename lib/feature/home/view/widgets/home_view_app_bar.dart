part of '../home_view.dart';

///_HomeViewAppBar
class _HomeViewAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeViewAppBar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Fetch Data'),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
