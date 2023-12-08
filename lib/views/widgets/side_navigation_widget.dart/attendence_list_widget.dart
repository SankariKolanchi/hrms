import 'package:flutter/material.dart';



class AttendenceListWidget extends StatelessWidget {
  const AttendenceListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        padding: const EdgeInsets.all(15),
        shrinkWrap: true,
        itemCount: 1,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, i) {
          return const AttendencelItem();
        },
      ),
    );
  }
}

class AttendencelItem extends StatelessWidget {
  const AttendencelItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18.0),
      margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 1),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
    
    );
  }
}
