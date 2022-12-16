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
            Builder(builder: (ctx) {
              return ElevatedButton(
                onPressed: () {
                  Scaffold.of(ctx).openEndDrawer();
                },
                child: Icon(
              Icons.home,
              color: Colors.white,
            ),
              );
            }),
          ],
          leading: Builder(builder: (ctx) {
            return IconButton(
              onPressed: () {
                ///open drawer using scafffold
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
              Row(
                children: [
                  Icon(
                    Icons.image,
                    color: Colors.red,
                    size: 50,
                  ),
                  Builder(builder: (context) {
                    return OutlinedButton(
                        onPressed: () {
                          Scaffold.of(context).closeDrawer();
                        },
                        child: Icon(Icons.close));
                  })
                ],
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
        endDrawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Account Name",
                ),
                accountEmail: Text(
                  'youremail.com',
                ),
                currentAccountPicture: CircleAvatar(
                  child: Text('Image'),
                ),
              ),
            ],
          ),
        ),
        persistentFooterButtons: [
          OutlinedButton(
            onPressed: () {},
            child: Text('Home'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('Profile'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('Setting'),
          ),
        ],
        bottomNavigationBar: Container(
          height: 80,
          color: Colors.blue,
        ),
      ),
    );
  }
}
