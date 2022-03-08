part of 'session_navigator_cubit.dart';

abstract class SessionNavigatorState extends Equatable {
  const SessionNavigatorState();
}

class HomePage extends SessionNavigatorState {
  const HomePage();

  @override
  List<Object> get props => [];
}

class ProfilePage extends SessionNavigatorState {
  const ProfilePage();

  @override
  List<Object> get props => [];
}

class AddArticlePage extends SessionNavigatorState {
  const AddArticlePage();

  @override
  List<Object> get props => [];
}
