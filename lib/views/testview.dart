import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:screen_test/components/box_container.dart';
import 'package:screen_test/model/box_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<BoxModel> topList = <BoxModel>[];
  List<BoxModel> cWorkList = <BoxModel>[
    BoxModel('cWorkList1', 'Dich Vu Dieu Xe'),
    BoxModel('cWorkList2', 'Nghi Phep'),
    BoxModel('cWorkList3', 'Cong Tac'),
    BoxModel('cWorkList4', 'Cong Tac'),
    BoxModel('cWorkList5', 'Dich Vu Dieu Xe'),
    BoxModel('cWorkList6', 'Nghi Phep'),
    BoxModel('cWorkList7', 'Cong Tac'),
    BoxModel('cWorkList8', 'Cong Tac'),
  ];
  List<BoxModel> cHRMList = <BoxModel>[
    BoxModel('cHRMList1', 'Dich Vu Dieu Xe'),
    BoxModel('cHRMList2', 'Nghi Phep'),
    BoxModel('cHRMList3', 'Cong Tac'),
    BoxModel('cHRMList4', 'Cong Tac'),
    BoxModel('cHRMList5', 'Dich Vu Dieu Xe'),
    BoxModel('cHRMList6', 'Nghi Phep'),
    BoxModel('cHRMList7', 'Cong Tac'),
    BoxModel('cHRMList8', 'Cong Tac'),
  ];
  List<BoxModel> cSaleList = <BoxModel>[
    BoxModel('cSaleList1', 'Dich Vu Dieu Xe'),
    BoxModel('cSaleList2', 'Nghi Phep'),
    BoxModel('cSaleList3', 'Cong Tac'),
    BoxModel('cSaleList4', 'Cong Tac'),
    BoxModel('cSaleList5', 'Dich Vu Dieu Xe'),
    BoxModel('cSaleList6', 'Nghi Phep'),
    BoxModel('cSaleList7', 'Cong Tac'),
    BoxModel('cSaleList8', 'Cong Tac'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.black),
            onPressed: () => {print("back")},
          ),
          centerTitle: true,
          title: Text(
            'Danh Sách Yêu Thích',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Stack(children: <Widget>[
                GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.all(10),
                  crossAxisCount: 4,
                  children: new List.generate(12, (index) {
                    return ContainerBox.boxContainer();
                  }),
                ),
                GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.all(10),
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  children: new List.generate(topList.length, (index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: Colors.black26,
                          width: 2,
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(4, 4, 18, 0),
                                  child: SvgPicture.asset(
                                    "asset/paper-plane.svg",
                                    height: 24,
                                    width: 24,
                                  )),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(18, 4, 4, 0),
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      topList[index].selected = false;
                                      topList.removeAt(index);
                                      print(index);
                                    });
                                  },
                                  child: SizedBox(
                                      child: SvgPicture.asset(
                                    "asset/close.svg",
                                    height: 12.5,
                                    width: 12.5,
                                  )),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              topList[index].title,
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 14),
                            ),
                            // color: Colors.teal[100],
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ]),
              Expanded(
                  child: SingleChildScrollView(
                      child: Container(
                color: Color(0xffEFF3F6),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(17, 24, 267, 0),
                            child: Text(
                              'C-WORK',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: GridView.count(
                            shrinkWrap: true,
                            primary: false,
                            padding: const EdgeInsets.fromLTRB(17, 8, 17, 0),
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            crossAxisCount: 4,
                            children:
                                new List.generate(cWorkList.length, (index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    (topList.length < 12 &&
                                            !cWorkList[index].selected)
                                        ? {
                                            topList.add(cWorkList[index]),
                                            cWorkList[index].selected = true,
                                            print("added")
                                          }
                                        : print("full");
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                4, 4, 18, 0),
                                            child: SizedBox(
                                                child: SvgPicture.asset(
                                              "asset/paper-plane.svg",
                                              height: 24,
                                              width: 24,
                                            )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                18, 4, 4, 0),
                                            child: SizedBox(
                                                child:
                                                    (cWorkList[index].selected)
                                                        ? SvgPicture.asset(
                                                            "asset/check.svg",
                                                            height: 12.5,
                                                            width: 12.5,
                                                          )
                                                        : SvgPicture.asset(
                                                            "asset/plus.svg",
                                                            height: 12.5,
                                                            width: 12.5,
                                                          )),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        child: Text(
                                          cWorkList[index].title.toString(),
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        // color: Colors.teal[100],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          // height: double.infinity,
                          // color: Colors.blue[50],
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(17, 24, 266, 0),
                            child: Text(
                              'C-HRM',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: GridView.count(
                            shrinkWrap: true,
                            primary: false,
                            padding: const EdgeInsets.fromLTRB(17, 8, 17, 0),
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            crossAxisCount: 4,
                            children:
                                new List.generate(cHRMList.length, (index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    (topList.length < 12 &&
                                            !cHRMList[index].selected)
                                        ? {
                                            topList.add(cHRMList[index]),
                                            cHRMList[index].selected = true,
                                            print("added")
                                          }
                                        : print("full");
                                    // (!cHRMList[index].selected)
                                    //     ? {
                                    //         cHRMList[index].selected = true,
                                    //         (topList.length < 12)
                                    //             ? topList.add(cHRMList[index])
                                    //             : print("full")
                                    //       }
                                    //     : print("added");
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                4, 4, 18, 0),
                                            child: SizedBox(
                                                child: SvgPicture.asset(
                                              "asset/paper-plane.svg",
                                              height: 24,
                                              width: 24,
                                            )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                18, 4, 4, 0),
                                            child: SizedBox(
                                                child:
                                                    (cHRMList[index].selected)
                                                        ? SvgPicture.asset(
                                                            "asset/check.svg",
                                                            height: 12.5,
                                                            width: 12.5,
                                                          )
                                                        : SvgPicture.asset(
                                                            "asset/plus.svg",
                                                            height: 12.5,
                                                            width: 12.5,
                                                          )),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        child: Text(
                                          cHRMList[index].title.toString(),
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        // color: Colors.teal[100],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: double.infinity,
                          // height: double.infinity,
                          // color: Colors.blue[50],
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(17, 24, 266, 0),
                            child: Text(
                              'C-SALE',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: GridView.count(
                            shrinkWrap: true,
                            primary: false,
                            padding: const EdgeInsets.fromLTRB(17, 8, 17, 0),
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                            crossAxisCount: 4,
                            children:
                                new List.generate(cSaleList.length, (index) {
                              return InkWell(
                                onTap: () {
                                  setState(() {
                                    (topList.length < 12 &&
                                            !cSaleList[index].selected)
                                        ? {
                                            topList.add(cSaleList[index]),
                                            cSaleList[index].selected = true,
                                            print("added")
                                          }
                                        : print("full");
                                    // (!cSaleList[index].selected)
                                    //     ? {
                                    //         cSaleList[index].selected = true,
                                    //         (topList.length < 12)
                                    //             ? topList.add(cSaleList[index])
                                    //             : print("full")
                                    //       }
                                    //     : print("added");
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      color: Colors.white),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                4, 4, 18, 0),
                                            child: SizedBox(
                                                child: SvgPicture.asset(
                                              "asset/paper-plane.svg",
                                              height: 24,
                                              width: 24,
                                            )),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                18, 4, 4, 0),
                                            child: SizedBox(
                                                child:
                                                    (cSaleList[index].selected)
                                                        ? SvgPicture.asset(
                                                            "asset/check.svg",
                                                            height: 12.5,
                                                            width: 12.5,
                                                          )
                                                        : SvgPicture.asset(
                                                            "asset/plus.svg",
                                                            height: 12.5,
                                                            width: 12.5,
                                                          )),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(8),
                                        child: Text(
                                          cSaleList[index].title.toString(),
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 14),
                                        ),
                                        // color: Colors.teal[100],
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            }),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )))
            ],
          ),
        ));
  }
}
