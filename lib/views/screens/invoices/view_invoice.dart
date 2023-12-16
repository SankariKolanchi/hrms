import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';
import '../../themes/app_text_style.dart';

class ViewInvoice extends StatelessWidget {
  const ViewInvoice({super.key, required this.isPaid});
  final bool isPaid;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Invoices',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColors.blueColor,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Invoice',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            )),
                        Icon(
                          Icons.receipt_long_outlined,
                          size: 30,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            Container(
              color: AppColors.blueColor,
              height: 60,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    top: 30,
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30))),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0, bottom: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Image.asset(
                            "assets/images/risolutor.jpg",
                            width: 100,
                            height: 100,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "New HRMS",
                          style: AppTextStyle.blackF18FW400TextStyle,
                        )
                      ],
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Created Date'),
                          SizedBox(height: 10),
                          Text('20/12/2023'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Created Date'),
                          SizedBox(height: 10),
                          Text('20/12/2023'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Estimate To'),
                            SizedBox(height: 10),
                            Text(
                                'Global Technologies, 5754 Airport Rd,CoosadaAL, 36020,United States230125'),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('Estimate To', textAlign: TextAlign.end),
                            SizedBox(height: 10),
                            Text(
                              'Global Technologies, 5754 Airport Rd,CoosadaAL, 36020,United States230125',
                              textAlign: TextAlign.end,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 25),
                  Table(
                    defaultColumnWidth: const FixedColumnWidth(120.0),
                    border: TableBorder.all(
                        color: Colors.black12,
                        style: BorderStyle.solid,
                        width: 2),
                    children: const [
                      TableRow(children: [
                        Column(children: [
                          Text('Website', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: [
                          Text('Tutorial', style: TextStyle(fontSize: 20.0))
                        ]),
                        Column(children: [
                          Text('Review', style: TextStyle(fontSize: 20.0))
                        ]),
                      ]),
                      TableRow(children: [
                        Column(children: [Text('Javatpoint')]),
                        Column(children: [Text('Flutter')]),
                        Column(children: [Text('5*')]),
                      ]),
                      TableRow(children: [
                        Column(children: [Text('Javatpoint')]),
                        Column(children: [Text('MySQL')]),
                        Column(children: [Text('5*')]),
                      ]),
                      TableRow(children: [
                        Column(children: [Text('Javatpoint')]),
                        Column(children: [Text('ReactJS')]),
                        Column(children: [Text('5*')]),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
