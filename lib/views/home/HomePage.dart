import 'package:fakeproducts/views/product/AddProduct.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader( // <-- SEE HERE
              decoration: BoxDecoration(color:  Colors.lightBlueAccent),
              accountName: Text(
                "Kesar Gabani",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "kg.earth@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                child: Text("K", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                radius: 20,
              ),
            ),
            ListTile(
              leading: Icon(Icons.add_shopping_cart_outlined),
              title: Text("Add Product"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => AddProduct())
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.add_shopping_cart_outlined),
              title: Text("View Product"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person_add_alt),
              title: Text("Add Employee"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("View employee"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
