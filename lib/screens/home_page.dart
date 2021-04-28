import 'package:burger_restaurant/widgets/default_button.dart';
import 'package:burger_restaurant/widgets/menu_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'), fit: BoxFit.fill),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(45),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -2),
                    blurRadius: 30,
                    color: Colors.black.withOpacity(0.3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/logo.png',
                      height: 25, alignment: Alignment.topCenter),
                  SizedBox(width: 5),
                  Text("Burger House".toUpperCase(),
                      style: Theme.of(context).textTheme.headline1),
                  Spacer(),
                  MenuItem(
                    title: "Home",
                    press: () {},
                  ),
                  MenuItem(
                    title: "About",
                    press: () {},
                  ),
                  MenuItem(
                    title: "Menu",
                    press: () {},
                  ),
                  DefaultButton(
                    title: "Call Us",
                    press: () {},
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Burger House".toUpperCase(),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                      "Choose your favorites from our diversified\nmenue of delicious burger sandwiches.",
                      style: Theme.of(context).textTheme.bodyText1),
                  FittedBox(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Color(0xFF372930),
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 35,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF372930),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                          SizedBox(width: 15),
                          DefaultButton(
                            title: "Call Us",
                            press: () {},
                          ),
                          SizedBox(width: 15),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
