import 'package:chat_app/chat/chat.dart';
import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';

class ListTileItem extends StatelessWidget {
  ListTileItem({
    super.key,
    required this.image,
    required this.name,
    required this.lastMsg,
    required this.time,
  });

  final String image;
  final String name;
  final String lastMsg;
  final String time;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatScreen(),
            ));
      },
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage(image),
      ),
      title: Text(name,
          style:
              TextStyle(fontWeight: FontWeight.bold, color: AppColors.primary)),
      subtitle: Text(lastMsg, style: TextStyle(color: AppColors.grey)),
      trailing: Text(time),
    );
  }
}
