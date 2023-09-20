import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tourify/MainPanel/Drawer.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tourify"),
        centerTitle: true,
        backgroundColor: const Color(0xff1034A6),
      ),
      drawer: MainPanelDrawer(),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Color(0xff1034A6),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0))),
            ),
            Positioned(top: 200, child: Container()),
          ],
        ),
        const SizedBox(
          height: 200,
        ),
      ]),
    );
  }
}
