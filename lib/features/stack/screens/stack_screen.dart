import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Positioned(
            // top: 30,
            // left: 30,
            height: 150,
            width: MediaQuery.of(context).size.width,
            child: Container(
              width: 150,
              height: 150,
              color: Colors.green[300],
              child: Text(
                'Green',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          Positioned(
            top: 140,
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: Container(
              width: 150,
              height: 150,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.red[300],),
              child: Text(
                'Green',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
