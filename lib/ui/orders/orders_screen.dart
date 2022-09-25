import 'package:flutter/material.dart';
import 'package:myshop/ui/shared/app_drawer.dart';

import 'order_manager.dart';
import 'order_item_card.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/orders';
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ordersManager = OrderManager();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: ordersManager.orderCount,
        itemBuilder: (ctx, i) => OrderItemCard(ordersManager.orders[i]),
      ),
    );
  }
}