import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      elevation: 1,
      title: Row(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/logo_only.png',
              height: 60,
              width: 60,
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              'Discover',
              style: Theme.of(context)
                  .textTheme
                  .headline2!
                  .copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: Icon(Icons.message, color: Colors.white)),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ))
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}
