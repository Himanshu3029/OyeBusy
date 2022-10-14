// import 'package:flutter/material.dart';

// class TrandingService extends StatelessWidget {
//   TrandingService({Key? key}) : super(key: key);
//   List list = ["1"];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height * 0.5,
//       width: MediaQuery.of(context).size.width * 0.95,
//       child: GridView.count(
//           crossAxisCount: 2,
//           children: List.generate(list.length, (index) {
//             return OutlinedButton(
//                 onPressed: () {},
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Stack(fit: StackFit.passthrough, children: [
//                       Image(
//                         image: AssetImage("images/" + list[index] + ".png"),
//                         height: 100,
//                       ),
//                     ]),
//                     const SizedBox(
//                       height: 4,
//                     ),
//                     // Text(
//                     //   list[index],
//                     //   textAlign: TextAlign.center,
//                     //   style: const TextStyle(fontSize: 16, color: Colors.black),
//                     // )
//                   ],
//                 ));
//           })),
//     );
//   }
// }
