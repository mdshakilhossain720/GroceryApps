import 'package:flutter/material.dart';

import '../homepage/widgets/container_reusble.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 18,
                      )),
                  Text(
                    "Beverages",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xff181725),
                    ),
                  ),
                  Image.asset(
                    "assets/image/appbar.png",
                    height: 17,
                    width: 16,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  shrinkWrap: true,
                    primary: false,
                
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisExtent: 248,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        crossAxisCount: 2),
                    itemBuilder: (context,index){
                      return ContainerResuable();
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
