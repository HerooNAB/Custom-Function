import 'package:flutter/material.dart';
import 'package:screen_test/model/box_model.dart';

class ContainerBox {
  static Widget boxContainer() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
          alignment: Alignment.center,
          matchTextDirection: true,
          repeat: ImageRepeat.noRepeat,
          image: AssetImage("asset/box.jpg"),
        ),
      ),
    );
  }

  // static Widget selectedBoxContainer() {
  //   return Container(
  //     decoration: BoxDecoration(
  //       color: Colors.white,
  //       borderRadius: BorderRadius.all(Radius.circular(10)),
  //       border: Border.all(
  //         color: Colors.black26,
  //         width: 2,
  //       ),
  //     ),
  //     child: Column(
  //       children: [
  //         Row(
  //           children: [
  //             Padding(
  //               padding: const EdgeInsets.fromLTRB(4, 4, 18, 0),
  //               child: SizedBox(
  //                   child: Image.asset(
  //                 "asset/paper-plane.jpg",
  //                 height: 20,
  //                 width: 20,
  //               )),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.fromLTRB(18, 4, 4, 0),
  //               child: SizedBox(
  //                   child: Image.asset(
  //                 "asset/close.jpg",
  //                 height: 20,
  //                 width: 20,
  //               )),
  //             ),
  //           ],
  //         ),
  //         Container(
  //           padding: const EdgeInsets.all(8),
  //           child: const Text("Công tác"),
  //           // color: Colors.teal[100],
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // static Widget unSelectedBoxContainer() {
  //   return InkWell(
  //     onTap: () {
  //       print("tap");
  //     },
  //     child: Container(
  //       decoration: BoxDecoration(
  //           borderRadius: BorderRadius.all(Radius.circular(10)),
  //           color: Colors.white),
  //       child: Column(
  //         children: [
  //           Row(
  //             children: [
  //               Padding(
  //                 padding: const EdgeInsets.fromLTRB(4, 4, 18, 0),
  //                 child: SizedBox(
  //                     child: Image.asset(
  //                   "asset/paper-plane.jpg",
  //                   height: 20,
  //                   width: 20,
  //                 )),
  //               ),
  //               Padding(
  //                 padding: const EdgeInsets.fromLTRB(18, 4, 4, 0),
  //                 child: SizedBox(
  //                     child: Image.asset(
  //                   "asset/close.jpg",
  //                   height: 20,
  //                   width: 20,
  //                 )),
  //               ),
  //             ],
  //           ),
  //           Container(
  //             padding: const EdgeInsets.all(8),
  //             child: const Text(""),
  //             // color: Colors.teal[100],
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
