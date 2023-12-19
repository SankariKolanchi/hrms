import 'package:flutter/material.dart';

sealed class AppUiConstants {
  const AppUiConstants._();

  static void baseBottomSheet(BuildContext context, Widget widget) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        enableDrag: true,
        isDismissible: true,
        backgroundColor: Colors.transparent,
        builder: (context) => Container(
              padding: MediaQuery.of(context).viewInsets,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).viewPadding.bottom > 0
                      ? MediaQuery.of(context).viewPadding.bottom
                      : 25),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25)),
              ),
              child: SingleChildScrollView(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Container(
                          height: 8,
                          width: 200,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(8),
                          )),
                      const SizedBox(height: 10),
                      widget,
                    ],
                  )),
            ));
  }
}
