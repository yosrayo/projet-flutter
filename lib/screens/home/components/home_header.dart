import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/controller/homeController.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/home/components/drawer.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find<HomeController>();
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: SvgPicture.asset("assets/icons/menu.svg"),
      onPressed: () {
          homeController.scaffoldKey.currentState!.openDrawer();
      },
    ),
    title: RichText(
      text: TextSpan(
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "Eat",
            style: TextStyle(color: kSecondaryColor),
          ),
          TextSpan(
            text: "Me",
            style: TextStyle(color: kPrimaryColor),
          ),
        ],
      ),
    ),
    actions: <Widget>[
      IconButton(
       
            icon: SvgPicture.asset('assets/icons/Cart Icon.svg') ,
            
            onPressed: () { Navigator.pushNamed(context, CartScreen.routeName); }, 
        
      ),
       
    ],
    
  );

}
 
}