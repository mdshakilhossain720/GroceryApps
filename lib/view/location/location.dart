
import 'package:flutter/material.dart';
import 'package:groceryproject/view/components/button_resuable.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    // Initial Selected Value
    String dropdownvalue = 'Banasree';

    // List of items in our dropdown menu
    var items = [
      'Item 1',
      'Item 2',
      'Item 3',
      'Item 4',
      'Item 5',
    ];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 80),
        child: Column(

          children: [
            Image.asset("assets/image/location.png"),
            SizedBox(height: 12,),
            Text("Select Your Location",textAlign: TextAlign.center,style:TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w600,
              color: Color(0xff181725),
            ),),
        Text("Swithch on your location to stay in tune with what’s happening in your area",textAlign: TextAlign.center,style:TextStyle(
              fontSize:15,
              //fontWeight: FontWeight.w600,
              color: Color(0xff7C7C7C),
            ),),
            SizedBox(height: 70,),
            // Text("Your Zone",textAlign: TextAlign.start,style: TextStyle(
            //   fontSize: 14,
            //   fontWeight: FontWeight.w600,
            // ),),
            // SizedBox(
            //   width: double.infinity,
            //   child: DropdownButton(
            //
            //     // Initial Value
            //     value: dropdownvalue,
            //
            //     // Down Arrow Icon
            //     icon: const Icon(Icons.keyboard_arrow_down),
            //
            //     // Array list of items
            //     items: items.map((String items) {
            //       return DropdownMenuItem(
            //         value: items,
            //         child: Text(items),
            //       );
            //     }).toList(),
            //     // After selecting the desired option,it will
            //     // change button value to selected value
            //     onChanged: (String? newValue) {
            //       setState(() {
            //         dropdownvalue = newValue!;
            //       });
            //     },
            //   ),
            // ),
            // SizedBox(height: 12,),
            // Text("Your Area",textAlign: TextAlign.start,style: TextStyle(
            //   fontSize: 14,
            //   fontWeight: FontWeight.w600,
            // ),),
            // SizedBox(
            //   width: double.infinity,
            //   child: DropdownButton(
            //
            //     // Initial Value
            //     value: dropdownvalue,
            //
            //     // Down Arrow Icon
            //     icon: const Icon(Icons.keyboard_arrow_down),
            //
            //     // Array list of items
            //     items: items.map((String items) {
            //       return DropdownMenuItem(
            //         value: items,
            //         child: Text(items),
            //       );
            //     }).toList(),
            //     // After selecting the desired option,it will
            //     // change button value to selected value
            //     onChanged: (String? newValue) {
            //       setState(() {
            //         dropdownvalue = newValue!;
            //       });
            //     },
            //   ),
            // ),
            SizedBox(height: 20,),
            ButtonResuable(title: 'Submit', ontab: () {},),
          ],
        ),
      ),

    );
  }
}
