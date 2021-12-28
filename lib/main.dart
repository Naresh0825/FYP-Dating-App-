import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/blocs/swipe/swipe_bloc.dart';
import 'package:project/config/app_router.dart';
import 'package:project/config/theme.dart';
import 'package:project/screens/screens.dart';
import 'package:project/screens/users_screen/users_screen.dart';

import 'config/theme.dart';
import 'models/models.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => SwipeBloc()..add(LoadUserEvent(users: User.users)))
      ],
      child: MaterialApp(
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomeScreen.routeName,
        home: HomeScreen(),
      ),
    );
  }
}
