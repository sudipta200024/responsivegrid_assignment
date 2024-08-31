import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.greenAccent,
        actions: [
          TextButton(
              onPressed: (){},
              child: Text("Contact",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight:FontWeight.bold ,
                    color: Colors.black),
              )
          ),
          TextButton(
              onPressed: (){},
              child: Text("Setting",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight:FontWeight.bold ,
                    color: Colors.black),
              )
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.grey
                ),
                accountName: Text("Sudipta"),
                accountEmail: Text("sudipta@gmail.com"),
              ),
            ),
            ListTile(leading: Icon(Icons.contact_mail_outlined),title: Text("Contact"),),
            ListTile(leading: Icon(Icons.email),title: Text("Mail"),),
            ListTile(leading: Icon(Icons.account_balance_outlined),title: Text("Account"),),
          ],
        ),
      ),
      body: _responsive(),
    );
  }
  Widget _responsive(){
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                xl: 12,lg: 8,md: 6,sm: 3,
                child: const Column(
                  children: [
                    Text("Flutter Web.The Basics",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,

                    ),
                    SizedBox(height: 16,),
                    Text("Flutter transforms the development process."
                        " Build, test, and deploy beautiful mobile,"
                        " web, desktop, and embedded experiences from "
                        "a single codebase",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,

                    ),
                    SizedBox(height: 16,),
                  ],
                ),

              ),
              ResponsiveGridCol(
                xl: 12,lg: 8,md: 6,sm: 4,
                child: Center(child: ElevatedButton(onPressed: (){}, child: const Text("Join Now"))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
