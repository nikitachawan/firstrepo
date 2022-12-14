import 'package:flutter/material.dart';

void main() {
  runApp(AboutPage());
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'About Page',
          ),
          actions: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
          ],
          leading: Builder(builder: (ctx) {
            return IconButton(
              onPressed: () {
                Scaffold.of(ctx).openDrawer();
              },
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            );
          }),
        ),
        body: Center(
          child: Text(
            'Center Text',
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Icon(
                Icons.image,
                color: Colors.red,
                size: 50,
              ),
              Text(
                'Full Name',
              ),
              Text(
                'Address',
              ),
              Divider(
                color: Colors.black,
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'First Menu',
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Second Menu',
                  ),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text(
                    'Third Menu',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
