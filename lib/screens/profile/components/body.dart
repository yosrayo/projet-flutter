import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/controller/Auth.dart';


import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends GetView<Auth> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Auth>(
       init: Get.put(Auth()),
      builder: (controller) => 
          Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              ProfilePic(),
              SizedBox(height: 20),
              ProfileMenu(
                text: "My Account",
                icon: "assets/icons/User Icon.svg",
                press: () => {},
              ),
              ProfileMenu(
                text: "Notifications",
                icon: "assets/icons/Bell.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "Settings",
                icon: "assets/icons/Settings.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "Help Center",
                icon: "assets/icons/Question mark.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "Log Out",
                icon: "assets/icons/Log out.svg",
                press: () {
                  controller.signOut();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
