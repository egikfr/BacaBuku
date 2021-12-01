import 'package:flutter/material.dart';
import 'package:bacabuku/themes.dart';

class EditProfilePage extends StatelessWidget {
  static const nameRoute = '/EditProfilePage';
  const EditProfilePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: backgroundColor2,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Edit Profile',
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.check,
              color: greenColor,
            ),
            onPressed: () {},
          )
        ],
      );
    }

    Widget usernameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: semiBoldText12.copyWith(color: whiteColor),
            ),
            TextFormField(
              style: semiBoldText12.copyWith(color: whiteColor),
              decoration: InputDecoration(
                hintText: '@mila',
                hintStyle: semiBoldText12.copyWith(color: whiteColor),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Name',
              style: semiBoldText12.copyWith(color: whiteColor),
            ),
            TextFormField(
              style: semiBoldText12.copyWith(color: whiteColor),
              decoration: InputDecoration(
                hintText: 'mila',
                hintStyle: semiBoldText12.copyWith(color: whiteColor),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: semiBoldText16.copyWith(color: whiteColor),
            ),
            TextFormField(
              style: semiBoldText12.copyWith(color: whiteColor),
              decoration: InputDecoration(
                hintText: 'mila@gmail.com',
                hintStyle: semiBoldText12.copyWith(color: whiteColor),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: whiteColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/profile-pic.png',
                  ),
                ),
              ),
            ),
            nameInput(),
            usernameInput(),
            emailInput(),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor2,
      appBar: AppBar(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
