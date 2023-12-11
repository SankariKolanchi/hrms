import 'package:flutter/material.dart';

import '../../themes/app_text_style.dart';
import '../../widgets/common_widget.dart/app_button_widget.dart';
import '../../widgets/common_widget.dart/app_textfield.dart';

class AddClientsWidget extends StatefulWidget {
  const AddClientsWidget({super.key});

  @override
  State<AddClientsWidget> createState() => _AddClientsWidgetState();
}

class _AddClientsWidgetState extends State<AddClientsWidget> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: index == 0
          ? BasicInformationWidget(
              onTap: () {
                setState(() {
                  index = 1;
                });
              },
            )
          : index == 1
              ? ContactInformationsWidget(
                  onBack: () {},
                  onTap: () {
                    setState(() {
                      index = 2;
                    });
                  })
              : index == 2
                  ? WebInformationsWidget(
                      onBack: () {},
                      onTap: () {
                        setState(() {
                          index = 3;
                        });
                      })
                  : index == 3
                      ? BankInformationsWidget(
                          onBack: () {},
                          onTap: () {
                            setState(() {
                              index = 4;
                            });
                          })
                      : HostInformationsWidget(
                          onBack: () {},
                          onTap: () {
                            Navigator.of(context).pop();
                          }),
    );
  }
}

class BasicInformationWidget extends StatelessWidget {
  const BasicInformationWidget({super.key, required this.onTap});
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 15, bottom: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Basic Informations'),
              Divider(
                color: Colors.grey,
              ),
            ],
          ),
        ),
        const AppTextFieldWidget(
          hintText: "Company Name",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Company Email",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "VAT",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Notes",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const SizedBox(height: 15),
        AppButtonWidget(
          onTap: () {
            onTap();
          },
          title: "NEXT",
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}

class WebInformationsWidget extends StatelessWidget {
  const WebInformationsWidget(
      {super.key, required this.onBack, required this.onTap});
  final Function onBack;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 15, bottom: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Web Informations'),
              Divider(color: Colors.grey),
            ],
          ),
        ),
        const AppTextFieldWidget(
          hintText: "Website",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "LinkedIn",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "City",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Skype",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Facebook",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "X",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const SizedBox(height: 15),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AppButtonWidget(
                onTap: () {},
                title: "Back",
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AppButtonWidget(
                onTap: () => onTap(),
                title: "NEXT",
              ),
            ),
          ),
        ]),
        const SizedBox(height: 15),
      ],
    );
  }
}

class ContactInformationsWidget extends StatelessWidget {
  const ContactInformationsWidget(
      {super.key, required this.onBack, required this.onTap});
  final Function onBack;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 15, bottom: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Contact Informations'),
              Divider(color: Colors.grey),
            ],
          ),
        ),
        const AppTextFieldWidget(
          hintText: "Company Phone",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Address",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "City",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "ZipCode",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "State",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Country",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const SizedBox(height: 15),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AppButtonWidget(
                onTap: () {},
                title: "Back",
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AppButtonWidget(
                onTap: () => onTap(),
                title: "NEXT",
              ),
            ),
          ),
        ]),
        const SizedBox(height: 15),
      ],
    );
  }
}

class BankInformationsWidget extends StatelessWidget {
  const BankInformationsWidget(
      {super.key, required this.onBack, required this.onTap});
  final Function onBack;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 15, bottom: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Bank Informations'),
              Divider(color: Colors.grey),
            ],
          ),
        ),
        const AppTextFieldWidget(
          hintText: "Bank",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "SWIFT/BIC",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Sort Code",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Account Holder",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Account",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "IBAN",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const SizedBox(height: 15),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AppButtonWidget(
                onTap: () {},
                title: "Back",
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AppButtonWidget(
                onTap: () => onTap(),
                title: "NEXT",
              ),
            ),
          ),
        ]),
        const SizedBox(height: 15),
      ],
    );
  }
}

class HostInformationsWidget extends StatelessWidget {
  const HostInformationsWidget(
      {super.key, required this.onBack, required this.onTap});
  final Function onBack;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 15, bottom: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Host Informations'),
              Divider(color: Colors.grey),
            ],
          ),
        ),
        const AppTextFieldWidget(
          hintText: "Hosting Company",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Hosting",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Account Username",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const AppTextFieldWidget(
          hintText: "Port",
          textStyle: AppTextStyle.blackF14FW500TextStyle,
        ),
        const SizedBox(height: 15),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AppButtonWidget(
                onTap: () {},
                title: "Back",
                color: Colors.red,
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: AppButtonWidget(
                onTap: () => onTap(),
                title: "Submit",
              ),
            ),
          ),
        ]),
        const SizedBox(height: 15),
      ],
    );
  }
}
