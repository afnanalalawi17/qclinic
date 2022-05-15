import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/constants.dart';

import '../controllers/chat_controller.dart';

class ChatView extends GetView<ChatController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Text(
          "الدردشة",
          style: TextStyle(
              color: kblack, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundColor:kblue,
                        child: CircleAvatar(
                          radius: 22,
                          backgroundColor: kwhite,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Column(
                          children: [
                            Text(
                              "محمد أحمد",
                              style: TextStyle(
                                  color: kblack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.green,
                                  radius: 5,
                                ),
                                SizedBox(
                                  width: widthApp * 0.01,
                                ),
                                Text(
                                  "متصل",
                                  style: TextStyle(
                                      color: kblack,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                            SizedBox(
                  height: 42,
                  width: 42,
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [
                              const Color(0xFF628B8C),
                              const Color(0xFF9ED0D2),
                            ],
                            begin: const FractionalOffset(0.0, 0.0),
                            end: const FractionalOffset(1.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                      ),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: kwhite,
                        size: 25.0,
                      )),
                ),
                ],
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Container(
              //       width: double.infinity,
              //       height: 10,
              //       decoration: BoxDecoration(
              //         color: kgrey
              //       ),
              //     ),

              //     Text("data"),
              //     Container(  width: double.infinity,
              //        height: 10,
              //       decoration: BoxDecoration(
              //         color: kgrey
              //       ),
              //     )
              //   ],
              // )

              SizedBox(
                height: heightApp * 0.04,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, right: 10, left: 20),
                          decoration: BoxDecoration(
                              color: Color(0xff9ED0D2).withOpacity(.31),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              )),
                          child: Text("السلام عليكم ورحمة الله وبركاته "),
                        ),
                        Text(
                          "23:00 PM",
                          style: TextStyle(
                              color: kblack,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    );
                  }),
              ListView.builder(
                  shrinkWrap: true,
                  physics: const ClampingScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                              top: 10, bottom: 10, right: 10, left: 20),
                          decoration: BoxDecoration(
                              color: Color(0xff8E44AD).withOpacity(.15),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              )),
                          child: Text("وعليكم السلام ورحمة الله وبركاته "),
                        ),
                        Text(
                          "23:00 PM",
                          style: TextStyle(
                              color: kblack,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    );
                  }),
SizedBox(height: heightApp*0.42,),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                              hintText: 'رسالتك',
                              contentPadding: const EdgeInsets.all(10.0),
                              filled: true,
                              fillColor: kwhite,
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color:  Color(0xffE8E6EA), width: 1),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color(0xffE8E6EA), width: 1),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              suffixIcon: const Icon(
                                Icons.arrow_back_ios_new,
                                color: Color(0xff828282),
                                size: 24.0,
                                textDirection: TextDirection.ltr,
                              ),
                              prefixIcon: Icon(
                                Icons.sticky_note_2_outlined,
                                color:kblue,
                                size: 28.0,
                                textDirection: TextDirection.ltr,
                              ),
                              hintStyle: TextStyle(
                                  color: Color(
                                    0xff828282,
                                  ),
                                  fontSize: 14)),
                          textAlign: TextAlign.start,
                          onChanged: (string) {}),
                    ),
                    SizedBox(width: widthApp*0.03,),
                    Container(
                      height: 48,
                      width: 48,
                      decoration: BoxDecoration(
                            border: Border.all(
      color: Color(0xffE8E6EA), //                   <--- border color
      width: 1.0,
    ),

                        color: kwhite,
borderRadius: BorderRadius.circular(15),

                      ),
                      child: Center(
                        child: Icon(
                          
                          Icons.mic,
                          color: kblue,
                          size: 24,
                          
                          ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
