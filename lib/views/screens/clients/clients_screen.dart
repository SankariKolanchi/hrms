import 'package:flutter/material.dart';

import '../../../utilis/app_ui_constants.dart';
import '../../widgets/common_widget.dart/card_widget.dart';
import '../../widgets/common_widget.dart/top_widget.dart';
import 'add_clients_widgets.dart';
import 'client_profile_screen.dart';

class ClientsScreen extends StatelessWidget {
  const ClientsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final topBarHeight = height * (25 / 100);
    final cardWidth = (width - 90) / 2;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Clients',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppUiConstants.baseBottomSheet(context, const AddClientsWidget());
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                TopWidget(height1: topBarHeight, height2: height),
                Positioned(
                    top: 40,
                    left: 10,
                    right: 10,
                    bottom: 0,
                    child: GridView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        itemCount: 10,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.85,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 20),
                        itemBuilder: (context, i) {
                          return CustomCardWithIconWidget(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          const ClientProfileScreen()));
                            },
                            onEdit: () {},
                            onDelete: () {},
                            icon: Icons.person,
                            text: "Android Developer",
                            text2: "John Doe",
                            text3: "XxxxX",
                            width: cardWidth,
                            height: 200,
                          );
                        })),
              ],
            ),
          ),
          const SizedBox(height: 5)
        ],
      ),
    );
  }
}
