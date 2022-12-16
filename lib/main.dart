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
            Builder(
              builder: (ctx) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(ctx).openEndDrawer();
                  },
                  icon: Icon(
                    Icons.menu_book,
                  ),
                );
              },
            ),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.image,
                    color: Colors.red,
                    size: 50,
                  ),
                  Builder(builder: (ctx) {
                    return IconButton(
                      onPressed: () {
                        Scaffold.of(ctx).closeDrawer();
                      },
                      icon: Icon(
                        Icons.close,
                        color: Colors.red,
                      ),
                    );
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
        onDrawerChanged: (val) {
          print('on drawer change: $val');
        },
        endDrawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  'Account Name',
                ),
                accountEmail: Text(
                  'youremail@gmail.com',
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
