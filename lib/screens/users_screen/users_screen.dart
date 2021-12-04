import 'package:flutter/material.dart';
import 'package:project/models/models.dart';
import 'package:project/widgets/widgets.dart';
import 'package:project/widgets/choice_button.dart';

class UsersScreen extends StatelessWidget {
  static const String routeName = '/users';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => UsersScreen(),
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    final User user = User.users[0];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 2,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 44.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: NetworkImage(User.users[0].imageUrls[0]),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ChoiceButton(
                          color: Theme.of(context).accentColor,
                          icon: Icons.clear_rounded,
                        ),
                        ChoiceButton(
                          height: 80,
                          width: 80,
                          size: 40,
                          hasGadient: true,
                          color: Colors.white,
                          icon: Icons.favorite,
                        ),
                        ChoiceButton(
                          color: Colors.black,
                          icon: Icons.watch_later,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name},${user.age}',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text('${user.jobTitle}',
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                          fontWeight: FontWeight.normal,
                        )),
                SizedBox(height: 15),
                Text(
                  'About',
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  '${user.bio}',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(fontWeight: FontWeight.normal, height: 2),
                ),
                SizedBox(height: 15),
                Text(
                  'Interest',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
