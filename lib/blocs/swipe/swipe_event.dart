part of 'swipe_bloc.dart';

abstract class SwipeEvent {
  const SwipeEvent();

  @override
  List<Object> get props => [];
}

class LoadUserEvent extends SwipeEvent {
  final List<User> users;
  LoadUserEvent({
    required this.users,
  });
  @override
  List<Object> get props => [users];
}

class SwipeLeftEvent extends SwipeEvent {
  final User user;

  SwipeLeftEvent({
    required this.user,
  });
  @override
  List<Object> get props => [user];
}

class SwipeRightEvent extends SwipeEvent {
  final User user;

  SwipeRightEvent({
    required this.user,
  });
  @override
  List<Object> get props => [user];
}
