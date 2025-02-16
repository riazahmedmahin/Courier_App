
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_app/presentation/utility/app_color.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.icon, this.ontap})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60.0);
  final Widget icon;
  final VoidCallback? ontap;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primaryColor,
      title: Image.asset(
        "assets/applogo.png",
        height: 120,
        width: 70,
      ),
      centerTitle: true,
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child: GestureDetector(
                onTap: () {
                  //Get.to(ProfileScreen());
                },
                child: Image.asset(
                  "assets/menu.png",
                  height: 20,
                  width: 20,
                  color: Colors.white,
                ))),
      ],
      leading: IconButton(
        onPressed: ontap,
        icon: icon,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(18.0),
          bottomLeft: Radius.circular(18.0),
        ),
      ),
    );
  }
}
