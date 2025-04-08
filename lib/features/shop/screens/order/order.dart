import 'package:flutter/material.dart';
import 'package:e_commerce/common/style/padding.dart';
import 'package:e_commerce/features/shop/screens/order/widgets/orders_list.dart';


import '../../../../common/widgets/appbar/appbar.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///-----[AppBar]-----
        appBar: UAppBar(
            title: Text('My Orders',
                style: Theme.of(context).textTheme.headlineSmall),
            showBackArrow: true),

        ///-----[Body]-----
        body: Padding(padding: UPadding.screenPadding, child: UOrdersListItems())
    );
  }
}
