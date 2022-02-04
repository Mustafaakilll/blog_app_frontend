part of 'session_navigator_cubit.dart';

abstract class SessionNavigatorState extends Equatable {
  const SessionNavigatorState();
}

class Home extends SessionNavigatorState {
  const Home();

  @override
  List<Object> get props => [];
}

class Profile extends SessionNavigatorState {
  const Profile();

  @override
  List<Object> get props => [];
}

class AddArticle extends SessionNavigatorState {
  const AddArticle();

  @override
  List<Object> get props => [];
}
