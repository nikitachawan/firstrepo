import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Text(
          'Bottom Sheet',
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              child: Icon(
                Icons.settings,
              ),
              onTap: () {
                print('on tap');
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.white,
                    duration: Duration(milliseconds: 800),
                    content: Text(
                      'This is a snack bar',
                      style: TextStyle(
                        color: Colors.red,
                      ),
                    ),
                  ),
                );
              },
              onDoubleTap: () {
                print('on double tap');
              },
              onLongPress: () {
                print('on long press');
              },
            ),
            Icon(
              Icons.add_a_photo,
            )
          ],
        ),
        shape: CircularNotchedRectangle(),
        notchMargin: 20,
      ),
      floatingActionButton: Builder(builder: (c) {
        return FloatingActionButton(
          onPressed: () {
            showBottomSheet(
              context: c,
              builder: (ctx) {
                return Container(
                  color: Colors.blue,
                  height: 250,
                  width: size.width,
                  child: Center(
                    child: Text('Bottom Sheet'),
                  ),
                );
              },
            );
          },
          child: Icon(
            Icons.home,
          ),
        );
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
