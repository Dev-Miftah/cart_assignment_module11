import 'package:assignment_module_11/const/colors.dart';
import 'package:flutter/material.dart';

class CartAlertDialog extends StatelessWidget {
  final double screenHeight, screenWidth;
  final String title;
  final String itemName;
  final Orientation orientation;

  const CartAlertDialog(
      {super.key,
      required this.title,
      required this.itemName,
      required this.screenHeight,
      required this.screenWidth,
        required this.orientation});

  @override
  Widget build(BuildContext context) {
    if (orientation == Orientation.portrait) {
      return AlertDialog(
        surfaceTintColor: Colors.white,
        title: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        content: Text(
          'You have added 5 $itemName T-shirt on your bag!',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
        ),
        contentPadding: const EdgeInsets.all(40.00),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          SizedBox(
            width: screenHeight * 0.9,
            height: screenHeight * 0.07,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  elevation: 5,
                  shadowColor: Colors.red,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w400)),
              child: const Text("OKAY",
                  style: TextStyle(
                      fontSize: 16)
              ),
            ),
          )
        ],
      );
    } else {
     return AlertDialog(
        surfaceTintColor: Colors.white,
        title: Center(
          child: Text(
            title,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        content: Text(
          'You have added 5 $itemName T-shirt on your bag!',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24),
        ),
        contentPadding: const EdgeInsets.all(40.00),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          SizedBox(
            width: screenHeight * 0.9,
            height: screenHeight * 0.15,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: buttonColor,
                  elevation: 5,
                  shadowColor: Colors.red,
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                      fontSize: 16, fontWeight:
                      FontWeight.w400)),
              child: const Text("OKAY",
                  style: TextStyle(
                      fontSize: 16, fontWeight:
                  FontWeight.w400)
              ),
            ),
          )
        ],
      );
    }
  }
}
