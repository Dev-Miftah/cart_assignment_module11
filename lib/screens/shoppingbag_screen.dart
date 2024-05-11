import 'package:assignment_module_11/Model/cart_data_model.dart';
import 'package:assignment_module_11/screens/widgets/bottom_bar.dart';
import 'package:assignment_module_11/screens/widgets/cart_alert_dialog.dart';
import 'package:assignment_module_11/screens/widgets/items_card.dart';
import 'package:flutter/material.dart';

import 'widgets/quantity_button.dart';

class ShoppingBag extends StatefulWidget {
  const ShoppingBag({super.key});

  @override
  State<ShoppingBag> createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  int itemCount = 0;
  late int totalAmount;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      if (orientation == Orientation.portrait) {
        return portraitOrientation(
            context, orientation, screenHeight, screenWidth);
      }
      return landscapeOrientation(
          context, orientation, screenHeight, screenWidth);
    });
  }

  Widget portraitOrientation(BuildContext context, Orientation orientation,
      double screenHeight, double screenWidth) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(5),
                child: Text(
                  "My Bag",
                  style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                  child: ListView.builder(
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        return ItemsCard(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth,
                            orientation: orientation,
                            decreaseQuantity: () => _decreaseQuantity(
                                  index,
                                ),
                            increaseQuantity: () => _increaseQuantity(
                                index, screenHeight, screenWidth, orientation),
                            itemPrice: cartItems[index].itemPrice,
                            itemImage: cartItems[index].itemImage,
                            itemName: cartItems[index].itemName,
                            itemColor: cartItems[index].itemColor,
                            itemSize: cartItems[index].itemSize,
                            itemQuantity: cartItems[index].itemQuantity);
                      })),
              BottomBar(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                orientation: orientation,
                calculateTotalAmount: calculateTotalAmount,
                showSnackBar: () => _showCheckoutSnackBar(context),
              )
            ],
          ),
        ));
  }

  Widget landscapeOrientation(BuildContext context, Orientation orientation,
      double screenHeight, double screenWidth) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "My Bag",
            style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: cartItems.length,
                      itemBuilder: (context, index) {
                        return ItemsCard(
                            screenHeight: screenHeight,
                            screenWidth: screenWidth,
                            orientation: orientation,
                            decreaseQuantity: () => _decreaseQuantity(index),
                            increaseQuantity: () => _increaseQuantity(
                                index, screenHeight, screenWidth, orientation),
                            itemPrice: cartItems[index].itemPrice,
                            itemImage: cartItems[index].itemImage,
                            itemName: cartItems[index].itemName,
                            itemColor: cartItems[index].itemColor,
                            itemSize: cartItems[index].itemSize,
                            itemQuantity: cartItems[index].itemQuantity);
                      })),
              BottomBar(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                orientation: orientation,
                calculateTotalAmount: calculateTotalAmount,
                showSnackBar: () => _showCheckoutSnackBar(context),
              )
            ],
          ),
        ));
  }

  int calculateTotalAmount() {
    totalAmount = 0;
    for (CartDataModel data in cartItems) {
      totalAmount += data.itemPrice * data.itemQuantity;
    }
    return totalAmount;
  }

  void _increaseQuantity(int index, double screenHeight, double screenWidth,
      Orientation orientation) {
    setState(() {
      cartItems[index].itemQuantity++;
      if (cartItems[index].itemQuantity == 5) {
        showDialog<String>(
            context: context,
            builder: (BuildContext context) => CartAlertDialog(
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                  title: 'Congratulations',
                  itemName: cartItems[index].itemName,
                  orientation: orientation,
                ));
      }
    });
  }

  void _decreaseQuantity(int index) {
    if (cartItems[index].itemQuantity > 1) {
      cartItems[index].itemQuantity--;
      setState(() {});
    }
  }

  void _showCheckoutSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Text('Congratulations! Your order has been placed.'),
      duration: Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
