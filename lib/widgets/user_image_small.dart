import 'package:flutter/widgets.dart';

class UserImageSmall extends StatelessWidget {
  const UserImageSmall({
    Key? key,
    required this.imageUrls,
  }) : super(key: key);

  final String imageUrls;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 8,
        right: 8,
      ),
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrls),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(5.0),
      ),
    );
  }
}
