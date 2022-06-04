import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stack'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Container(),

              expandedHeight: 150.0,
              // pinned: true,
              // floating: true,
              flexibleSpace: const FlexibleSpaceBar(
                background: FlutterLogo(),

                // Text('Available seats'),
              ),
            ),
            SliverAppBar(
              leading: Container(),
              pinned: true,
              floating: true,
              backgroundColor: Colors.white,
              flexibleSpace: const FlexibleSpaceBar(
                title: Text(
                  'Available seats',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index)  {

                  return Container(
                    color: index.isOdd ? Colors.white : Colors.black12,
                    height: 100.0,
                    child: Center(
                      child: Text('$index', textScaleFactor: 5),
                    ),
                  );
                },
                childCount: 20,
              ),
            ),
          ],
        )

        // Stack(
        //   children: [
        //     Positioned(
        //       // top: 30,
        //       // left: 30,
        //       height: 150,
        //       width: MediaQuery.of(context).size.width,
        //       child:
        // Container(
        //         width: 150,
        //         height: 150,
        //         color: Colors.green[300],
        //         child: const Text(
        //           'Green',
        //           style: TextStyle(color: Colors.white, fontSize: 20),
        //         ),
        //       ),
        //     ),
        //     Positioned(
        //       top: 140,
        //       height: 250,
        //       width: MediaQuery.of(context).size.width,
        //       child: Container(
        //         width: 150,
        //         height: 150,
        //         decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(20),
        //           color: Colors.red[300],
        //         ),
        //         child: const Text(
        //           'Green',
        //           style: TextStyle(color: Colors.white, fontSize: 20),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        );
  }
}
