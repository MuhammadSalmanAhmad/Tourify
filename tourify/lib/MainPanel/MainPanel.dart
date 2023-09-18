import 'package:flutter/material.dart';
import 'package:tourify/MainPanel/Drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainPanelDrawer(),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xff1034A6),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0))),
            ),
            Positioned(
              top: 200,
              child: Container()
            ),
          ],
        ),
        const SizedBox(
          height: 200,
        ),
       
      ]),
    );
  }
}