import 'package:bacabuku/themes.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  static const nameRoute = '/UserPage';
  const UserPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(
              defaultMargin,
            ),
            child: Row(
              children: [
                ClipOval(
                  child:
                      Image.asset('assets/images/profile-pic.png', width: 64),
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hallo, Mila',
                        style: semiBoldText16.copyWith(color: whiteColor),
                      ),
                      Text(
                        '@mila',
                        style: semiBoldText12.copyWith(color: whiteColor),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/sign-in', (route) => false);
                  },
                  child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.chevron_left_rounded,
                        size: 30,
                        color: greenColor,
                      )),
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget menuItem(String text) {
      return Container(
        margin: EdgeInsets.only(top: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: semiBoldText14.copyWith(color: whiteColor),
            ),
            Icon(
              Icons.chevron_right,
              color: whiteColor,
            ),
          ],
        ),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          decoration: BoxDecoration(
            color: backgroundColor2,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Text('Account',
                  style: semiBoldText16.copyWith(color: whiteColor)),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/EditProfilePage');
                },
                child: menuItem(
                  'Edit Profile',
                ),
              ),
              menuItem(
                'Help',
              ),
              SizedBox(
                height: 30,
              ),
              Text('General',
                  style: semiBoldText16.copyWith(color: whiteColor)),
              menuItem(
                'Privacy & Policy',
              ),
              menuItem(
                'Term of Service',
              ),
              menuItem(
                'Rate App',
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        content(),
      ],
    );
  }
}
