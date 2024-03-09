import 'package:chat_app/colors.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Padding(
        padding: EdgeInsets.only(left: 14, right: 14),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        'https://ichef.bbci.co.uk/news/976/cpsprodpb/12DB/production/_104172840_gettyimages-923757862.jpg'),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Oady Ahmed',
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.white,
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.call,
                      color: AppColors.white,
                      size: 30,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text(
                  '9 MAR 12:00',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.containarBR_R),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'azayek 3amel eah',
                    style: TextStyle(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 70),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.containarBR_S),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'kolo tamam enta 3amel eah + ha4ofak emata  ',
                      style: TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.containarBR_R),
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Next Month',
                    style: TextStyle(
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  '08:12',
                  style: TextStyle(color: AppColors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 230),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.containarBR_S),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'leah ya 3am kol dah ',
                      style: TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 355),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.containarBR_S),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      '?',
                      style: TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Container(
                  height: 45,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.containarBR_R),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4),
                        child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: AppColors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.camera_alt_outlined))),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Message',
                        style: TextStyle(color: AppColors.white),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: IconButton(
                          icon: Icon(
                            Icons.send,
                            color: AppColors.white,
                            size: 40,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
