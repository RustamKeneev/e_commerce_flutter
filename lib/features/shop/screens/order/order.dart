import 'package:e_commerce_flutter/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_flutter/features/shop/screens/order/widget/order_list.dart';
import 'package:e_commerce_flutter/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///AppBar
      appBar: TAppBar(
          title: Text("My Orders",
              style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true
      ),
      body: const Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),

          ///Orders
          child: TOrderListItem()),
    );
  }
}
