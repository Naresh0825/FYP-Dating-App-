import 'package:flutter/material.dart';
import 'package:project/config/theme.dart';
import 'package:project/models/models.dart';
import 'package:project/widgets/widgets.dart';
import 'package:project/widgets/choice_button.dart';

class UsersScreen extends StatelessWidget {
  static const String routeName = '/users';

  static Route route({required User user}) {
    return MaterialPageRoute(
      builder: (_) => UsersScreen(user: user),
      settings: RouteSettings(name: routeName),
    );
  }

  final User user;
  const UsersScreen({required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEFEFEF),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
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
                            image: NetworkImage(user.imageUrls[0]),
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
                            color: Theme.of(context).primaryColor,
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
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          UserImageSmall(imageUrls: user.imageUrls[1]),
                          UserImageSmall(imageUrls: user.imageUrls[2]),
                          UserImageSmall(imageUrls: user.imageUrls[3]),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          UserImageSmall(imageUrls: user.imageUrls[1]),
                          UserImageSmall(imageUrls: user.imageUrls[2]),
                          UserImageSmall(imageUrls: user.imageUrls[3]),
                        ],
                      ),
                    ],
                  ),
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
                  SizedBox(
                    height: 35,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: user.interests
                          .map(
                            (interest) => Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                gradient: LinearGradient(
                                  colors: [
                                    Theme.of(context).primaryColor,
                                    Colors.blue,
                                  ],
                                ),
                              ),
                              child: Text(
                                interest,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6!
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
