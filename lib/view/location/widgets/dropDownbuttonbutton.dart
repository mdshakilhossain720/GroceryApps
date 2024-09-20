import 'package:flutter/material.dart';

class CustomDropdownButton extends StatelessWidget {
  final List<String> items;
  final String value;
  final ValueChanged<String?> onChanged;

  const CustomDropdownButton({
    Key? key,
    required this.items,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Full width
      height: 50, // Height set to 50
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
       // border: Border.(color: Colors.grey),
       // borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButton<String>(

        isExpanded: true, // Makes the dropdown take the full width
        value: value,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: Colors.black, fontSize: 16),
        onChanged: onChanged,
        items: items.map<DropdownMenuItem<String>>((String item) {
          return DropdownMenuItem<String>(
            value: item,
            child: Text(item,style: TextStyle(
              color: Color(0xff181725),
              fontSize: 18,

            ),),
          );
        }).toList(),
      ),
    );
  }
}
