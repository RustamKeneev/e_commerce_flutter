import 'package:e_commerce_flutter/utils/device/device_utility.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget{
  const TTabBar({
    super.key, required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? TColors.black : TColors.white,
        child: TabBar(
          tabs: tabs,
          isScrollable: true,
          indicatorColor: TColors.primary,
          labelColor: dark ? TColors.white : TColors.primary,
          unselectedLabelColor: TColors.darkGrey,
          indicatorPadding: EdgeInsets.zero,
          padding: const EdgeInsets.only(left: 8.0),
        ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
