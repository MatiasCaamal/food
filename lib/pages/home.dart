import 'package:flutter/material.dart';
import 'package:food/widget/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

//Hola
class _HomeState extends State<Home> {

  bool icecream= false, pizza=false, salad=false, burger=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 10.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Shivam,",
                  style: Appwidget.boldTextFeildStyle()
                ),
                Container(
                  padding: EdgeInsets.all(3),
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
              child: Icon(Icons.shopping_cart, color: Colors.white),
            )
              ],
            ),
            SizedBox(height: 20.0,),
            Text(
                  "Delicius Food",
                  style: Appwidget.HeadlineTextFeildStyle()
                ),
                Text(
                  "Discover and Get Great Food",
                  style: Appwidget.lightTextFeildStyle() ),
                  SizedBox(height: 20.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){
                          icecream=true;
                          pizza=false;
                          salad=false;
                          burger=false;
                          setState(() {
                            
                          });
                        },
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(color: icecream?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(8),
                            child: Image.asset("images/icecream.png", height: 40, width: 40, fit: BoxFit.cover, color: icecream? Colors.white: Colors.black),
                          ),
                        ),
                      ),
                         GestureDetector(
                        onTap: (){
                          icecream=false;
                          pizza=true;
                          salad=false;
                          burger=false;
                          setState(() {
                            
                          });
                        },
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(color: pizza?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(8),
                            child: Image.asset("images/pizza.png", height: 40, width: 40, fit: BoxFit.cover, color: pizza? Colors.white: Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          icecream=false;
                          pizza=false;
                          salad=true;
                          burger=false;
                          setState(() {
                            
                          });
                        },
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(color: salad?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(8),
                            child: Image.asset("images/salad.png", height: 40, width: 40, fit: BoxFit.cover, color: salad? Colors.white: Colors.black),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          icecream=false;
                          pizza=false;
                          salad=false;
                          burger=true;
                          setState(() {
                            
                          });
                        },
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(color: burger?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                            padding: EdgeInsets.all(8),
                            child: Image.asset("images/burger.png", height: 40, width: 40, fit: BoxFit.cover, color: burger? Colors.white: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
  
}
