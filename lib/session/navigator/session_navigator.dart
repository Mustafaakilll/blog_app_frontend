import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../add_article/add_article_view.dart';
import '../home/home_view.dart';
import '../profile/profile_view.dart';
import 'session_navigator_cubit.dart';

class SessionNavigator extends StatelessWidget {
  const SessionNavigator({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute(builder: (_) => const SessionNavigator());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionNavigatorCubit, SessionNavigatorState>(
      builder: (context, state) {
        return const Scaffold(
          body: _SessionPageBuilder(),
          bottomNavigationBar: _BottomNavBar(),
        );
      },
    );
  }
}

class _SessionPageBuilder extends StatelessWidget {
  const _SessionPageBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionNavigatorCubit, SessionNavigatorState>(
      builder: (context, state) {
        final _navCubit = context.read<SessionNavigatorCubit>();
        return PageView.builder(
          onPageChanged: (value) => _navCubit.setPageIndex(value),
          itemCount: 3,
          itemBuilder: (context, index) {
            switch (_navCubit.getPageIndex(state)) {
              case 0:
                return const HomeView();
              case 1:
                return const AddArticleView();
              case 2:
                return const ProfileView();
            }
            return const HomeView();
          },
        );
      },
    );
  }
}

class _BottomNavBar extends StatelessWidget {
  const _BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SessionNavigatorCubit, SessionNavigatorState>(
      builder: (context, state) {
        final _navCubit = context.read<SessionNavigatorCubit>();
        return BottomNavigationBar(
          currentIndex: _navCubit.getPageIndex(state),
          onTap: (value) => _navCubit.setPageIndex(value),
          showUnselectedLabels: false,
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            const BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
            const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          ],
        );
      },
    );
  }
}
