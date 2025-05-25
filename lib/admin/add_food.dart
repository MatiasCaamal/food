import 'package:flutter/material.dart';
import 'package:food/widget/widget_support.dart';

class AddFood extends StatefulWidget {
  const AddFood({super.key});

  @override
  State<AddFood> createState() => _AddFoodState();
}

class _AddFoodState extends State<AddFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Color(0xFF373866),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Add Item",
          style: Appwidget.headlineTextFeildStyle(),
        ),
      ),
      body: Container(
        margin:
            EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Upload the Item Picture",
              style: Appwidget.semiBoldTextFeildStyle(),
              
            ),
            SizedBox(height: 20.0,),
            Center(
              child: Material(
                elevation: 4.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1.5), borderRadius: BorderRadius.circular(20)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
