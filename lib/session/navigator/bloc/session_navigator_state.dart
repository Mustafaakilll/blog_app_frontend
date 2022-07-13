part of 'session_navigator_cubit.dart';

@freezed
class SessionNavigatorState with _$SessionNavigatorState {
  const factory SessionNavigatorState.home() = _Home;

  const factory SessionNavigatorState.profile() = _Profile;

  const factory SessionNavigatorState.addArticle() = _AddArticle;
}
