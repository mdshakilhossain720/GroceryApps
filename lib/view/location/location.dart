import 'package:flutter/material.dart';
import 'package:groceryproject/view/components/button_resuable.dart';
import 'package:groceryproject/view/utility/image_path.dart';
import 'package:groceryproject/view/utility/text_style.dart';

import 'widgets/dropDownbuttonbutton.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = 'Option 1';
    final List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3'];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 80),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(ImagePath.location),
              SizedBox(
                height: 12,
              ),
              Text("Select Your Location",
                  textAlign: TextAlign.center, style: TTextStyle.location),
              Text(
                "Swithch on your location to stay in tune with what’s happening in your area",
                textAlign: TextAlign.center,
                style:TTextStyle.locaText,
              ),
              SizedBox(
                height: 70,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Your Zone", style: TTextStyle.dropDownText)),
              CustomDropdownButton(
                items: dropdownItems,
                value: dropdownValue,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),
              SizedBox(
                height: 16,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Your Area", style: TTextStyle.dropDownText)),
              CustomDropdownButton(
                items: dropdownItems,
                value: dropdownValue,
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              ButtonResuable(
                title: 'Submit',
                ontab: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
