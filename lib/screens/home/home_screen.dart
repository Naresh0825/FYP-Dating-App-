import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/blocs/swipe/swipe_bloc.dart';
import 'package:project/models/user_models.dart';
import 'package:project/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => HomeScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder: (context, state) {
          if (state is SwipeLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SwipeLoaded) {
            return Column(
              children: [
                Draggable(
                  child: UserCard(user: state.users[0]),
                  feedback: UserCard(user: state.users[0]),
                  childWhenDragging: UserCard(user: state.users[1]),
                  onDragEnd: (drag) {
                    if (drag.velocity.pixelsPerSecond.dx < 0) {
                      context.read<SwipeBloc>()
                        ..add(SwipeLeftEvent(user: state.users[0]));
                      print('Swiped left');
                    } else {
                      context.read<SwipeBloc>()
                        ..add(SwipeRightEvent(user: state.users[0]));
                      print('Swiped right');
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 60,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          context.read<SwipeBloc>()
                            ..add(SwipeLeftEvent(user: state.users[0]));
                          print('Swiped left');
                        },
                        child: ChoiceButton(
                          width: 60,
                          height: 60,
                          size: 30,
                          hasGadient: false,
                          color: Theme.of(context).accentColor,
                          icon: Icons.clear_rounded,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.read<SwipeBloc>()
                            ..add(SwipeRightEvent(user: state.users[0]));
                          print('Swiped right');
                        },
                        child: ChoiceButton(
                          width: 80,
                          height: 80,
                          size: 40,
                          hasGadient: true,
                          color: Colors.white,
                          icon: Icons.favorite,
                        ),
                      ),
                      ChoiceButton(
                        width: 60,
                        height: 60,
                        size: 30,
                        hasGadient: false,
                        color: Theme.of(context).primaryColor,
                        icon: Icons.watch_later,
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Text('Something went wrong.');
          }
        },
      ),
    );
  }
}
