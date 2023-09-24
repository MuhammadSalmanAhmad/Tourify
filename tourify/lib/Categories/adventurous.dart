import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourify/Categories/religious.dart';
import 'package:tourify/Categories/sightseeing.dart';

class AdventurousScreen extends StatelessWidget {
  const AdventurousScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.share),
              color: Colors.white,
              onPressed: () {
                // Handle three dots button press here
              },
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.white,
              onPressed: () {
                // Handle three dots button press here
              },
            ),
          ],
          backgroundColor: Color(0xff1034A6),
        ),
        body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Positioned(
                    top: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: Color(0xff1034A6),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0),
                        ),
                      ),
                    )),
                Container(
                  height: MediaQuery.sizeOf(context).height,
                  width: MediaQuery.sizeOf(context).width,
                ),
                Positioned(
                  top: 120,
                  child: Column(
                    children: [
                      StreamBuilder(
                          stream: FirebaseDatabase.instance
                              .ref()
                              .child('Tours')
                              .child('Adventure')
                              .onValue,
                          builder: (context, snapshot) {

                            
                            if(snapshot.hasData){
                              Text("Han Jnai data aa gya he ${snapshot.data!.snapshot.value}");
                            }
                            else if(snapshot.hasError){
                              return Text(snapshot.error.toString());
                            }
                              return Container(
                                height: 120,
                                width: 300,
                                color: Colors.red,
                                child: Text(snapshot.data!.snapshot.value.toString()),
                              );


                          })
                    ],
                  ),
                  // child: Column(
                  //   children: [
                  //     StreamBuilder(
                  //       stream: FirebaseDatabase.instance.ref().child('Tours').child('Adventure').onValue,
                  //       builder: (context, snapshot) {
                  //         if (snapshot.hasData) {
                  //           debugPrint("Data yeh aya he hamary pas :"+snapshot.data!.snapshot.value.toString());
                  //           DataSnapshot data = snapshot.data!.snapshot;
                  //           Map<dynamic, dynamic>? adventuresData = data.value as Map?;
                  //
                  //           if (adventuresData != null) {
                  //             return ListView.builder(
                  //               itemCount: adventuresData.length,
                  //               itemBuilder: (context, index) {
                  //                 var adventureKey = adventuresData.keys.toList()[index];
                  //                 Map<String, dynamic> adventureData = adventuresData[adventureKey] as Map<String, dynamic>;
                  //
                  //                 return InkWell(
                  //                   onTap: () {
                  //                     Navigator.push(context, MaterialPageRoute(builder: (context) => AdventurousScreen()));
                  //                     debugPrint("Han jani ho rha he");
                  //                   },
                  //                   child: Container(
                  //                     decoration: BoxDecoration(
                  //                       color: Colors.white,
                  //                       shape: BoxShape.rectangle,
                  //                     ),
                  //                     height: 150,
                  //                     width: 300,
                  //                     child: Padding(
                  //                       padding: const EdgeInsets.all(5.0),
                  //                       child: Stack(
                  //                         clipBehavior: Clip.none,
                  //                         alignment: AlignmentDirectional.bottomEnd,
                  //                         children: [
                  //                           Align(
                  //                             alignment: Alignment.topLeft,
                  //                             child: Positioned(
                  //                               child: Container(
                  //                                 height: 180,
                  //                                 width: 130,
                  //                                 decoration: BoxDecoration(
                  //                                   image: DecorationImage(
                  //                                     image: AssetImage('assets/adventure.jpg'),
                  //                                     fit: BoxFit.fill,
                  //                                   ),
                  //                                 ),
                  //                               ),
                  //                             ),
                  //                           ),
                  //                           Positioned(
                  //                             top: 5,
                  //                             child: Text(
                  //                               'Adventurous Tours',
                  //                               style: GoogleFonts.abel(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
                  //                             ),
                  //                           ),
                  //                           Positioned(
                  //                             top: 40,
                  //                             child: Text(
                  //                               'Duration: ${adventureData['Duration']}',
                  //                               style: TextStyle(fontSize: 14, color: Colors.grey),
                  //                             ),
                  //                           ),
                  //                           Positioned(
                  //                             top: 65,
                  //                             child: Text(
                  //                               'Date: ${adventureData['Date']}',
                  //                               style: TextStyle(fontSize: 14, color: Color(0xff1034A6)),
                  //                             ),
                  //                           ),
                  //                           Positioned(
                  //                             top: 85,
                  //                             child: Text(
                  //                               'Departure: ${adventureData['Departure']}',
                  //                               style: TextStyle(fontSize: 14, color: Colors.grey),
                  //                             ),
                  //                           ),
                  //                           Positioned(
                  //                             top: 110,
                  //                             child: Container(
                  //                               height: 50,
                  //                               width: 80,
                  //                               padding: EdgeInsets.all(12),
                  //                               decoration: BoxDecoration(
                  //                                 color: Colors.blue,
                  //                                 borderRadius: BorderRadius.circular(15),
                  //                               ),
                  //                               child: Text(
                  //                                 '\$${adventureData['Budget']}',
                  //                                 style: TextStyle(fontSize: 18, color: Colors.white),
                  //                               ),
                  //                             ),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 );
                  //               },
                  //             );
                  //           } else {
                  //             return Text("No data available."); // Handle the case when data is null
                  //           }
                  //         } else {
                  //
                  //           return CircularProgressIndicator(); // Show a loading indicator while data is fetched
                  //         }
                  //       },
                  //     ),
                  //   ],
                  // ),
                ),
              ])
        ])));
  }
}
