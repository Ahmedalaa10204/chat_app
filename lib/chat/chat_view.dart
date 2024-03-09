import 'package:chat_app/colors.dart';
import 'package:chat_app/chat/user_model.dart';

import 'package:chat_app/widgets/fav_contact.dart';
import 'package:chat_app/widgets/list_title.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          'Chats',
          style: TextStyle(color: AppColors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: AppColors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          // fav contacts
          FavouriteContacts(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: AppColors.white),
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTileItem(
                      image: user[index].image,
                      lastMsg: user[index].lastMsg,
                      name: user[index].name,
                      time: user[index].date,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return Divider(
                      indent: 30,
                      endIndent: 30,
                    );
                  },
                  itemCount: user.length),
            ),
          )
        ],
      ),
    );
  }
}
