import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:get/get.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/constants.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/routes/app_pages.dart';
import 'package:table_calendar/table_calendar.dart';

import '../controllers/clinic_controller.dart';

class ClinicView extends GetView<ClinicController> {
  List<String> valueList = ['A', 'B', 'C', 'D'];
  DateTime? _selectedDay;
  DateTime? day;
  DateTime _focusedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "العيادة",
                style: TextStyle(
                    color: kblack, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                onTap: () {
                   Navigator.of(context).pop();
                },
                child: SizedBox(
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
                          Icons.arrow_forward_ios_rounded,
                          color: kwhite,
                          size: 25.0,
                        ))),
              ),
            ],
          ),
        ),
        body: GetBuilder<ClinicController>(
            init: ClinicController(),
            initState: (_) {},
            builder: (_) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "حجز موعد",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: heightApp * 0.02,
                      ),
                      Container(
                        width: double.infinity,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 0), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            ListView.separated(
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: 5,
                                );
                              },
                              scrollDirection: Axis.horizontal,
                              padding:
                                  const EdgeInsets.only(left: 10, right: 10),
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                    onTap: () {
                                      controller.onSelectCat(index);
                                    },
                                    child: controller.selectedCatIndex != index
                                        ? Container(
                                            width: 60,
                                            child: Image.asset(
                                                "assets/images/cat.png"))
                                        : Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox.fromSize(
                                              size: Size.fromRadius(
                                                  50), // Image radius
                                              child: Image.asset(
                                                  "assets/images/cat.png",
                                                  fit: BoxFit.fill),
                                            ),
                                        )
                                          
                                          );
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: heightApp * 0.02,
                      ),
                      Text(
                        "الخدمة",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: heightApp * 0.02,
                      ),
                      Container(
                        height: 60.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Color(0xffF2F2F2)),
                        child: DropdownButtonFormField(
                          isDense: true,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          validator: (val) {
                            // return controller.validateZone(val.toString());
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: kbordergrey, width: 2),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            //
                          ),
                          items: valueList.map((value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                              onTap: () {},
                            );
                          }).toList(),
                          // value: controller.selectedVendor2,
                          onChanged: (newValue) {},
                          hint: Text(
                            "اختار خدمة",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                          isExpanded: true,
                        ),
                      ),
                      SizedBox(
                        height: heightApp * 0.02,
                      ),
                      Text(
                        "وصف مختصر عن المرض",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: heightApp * 0.02,
                      ),
                      TextField(
                          maxLines: 4,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(5.0),
                              filled: true,
                              fillColor: const Color(0XFFF2F2F2),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kbordergrey, width: 2),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: kbordergrey, width: 2),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              hintStyle: TextStyle(color: Color(0xffBDBDBD))),
                          textAlign: TextAlign.start,
                          onChanged: (string) {}),
                      SizedBox(
                        height: heightApp * 0.02,
                      ),
                      Text(
                        "التعاهدات والشروط",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: heightApp * 0.01,
                      ),
                      Text(
                        "هل يعاني حيوانك الأليف من أي امراض جلدية",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Obx(() => Radio(
                              activeColor: kblue,
                              value: "yes",
                              groupValue: controller.selectedGender.value,
                              onChanged: (value) {
                                controller.onChangeGender(value);
                              })),
                          Text(
                            "نعم",
                            // style: khint_text,
                          ),
                          SizedBox(
                            width: widthApp * 0.03,
                          ),
                          Obx(() => Radio(
                              activeColor: kblue,
                              value: "no",
                              groupValue: controller.selectedGender.value,
                              onChanged: (value) {
                                controller.onChangeGender(value);
                              })),
                          Text(
                            "لا",
                            //  style: khint_text,
                          ),
                        ],
                      ),
                      Obx(
                        () => controller.selectedGender.value == "yes"
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "وصف مختصر",
                                    style: TextStyle(
                                        color: kblack,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: heightApp * 0.02,
                                  ),
                                  TextField(
                                      maxLines: 3,
                                      decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.all(5.0),
                                          filled: true,
                                          fillColor: const Color(0XFFF2F2F2),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: kbordergrey, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: kbordergrey, width: 2),
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          hintStyle: TextStyle(
                                              color: Color(0xffBDBDBD))),
                                      textAlign: TextAlign.start,
                                      onChanged: (string) {}),
                                ],
                              )
                            : SizedBox(
                                height: heightApp * 0.02,
                              ),
                      ),
                      TableCalendar(
                      
                        firstDay: DateTime.utc(2010, 10, 16),
                        lastDay: DateTime.utc(2030, 3, 14),
                        focusedDay: DateTime.now(),
                        calendarFormat: CalendarFormat.month,
                        selectedDayPredicate: (day) {
                          return isSameDay(_selectedDay, day);
                        },
                        onDaySelected: (selectedDay, focusedDay) {
                          if (!isSameDay(_selectedDay, selectedDay)) {
                            _selectedDay = selectedDay;
                            _focusedDay = focusedDay;
                            controller.update();
                          }
                          print(selectedDay);
                        },
                        onPageChanged: (focusedDay) {
                          _focusedDay = focusedDay;
                        },
                        onFormatChanged: (format) {
                          if (_calendarFormat != format) {
                            _calendarFormat = format;
                          controller.update();
                          }
                        },
                        calendarStyle: CalendarStyle(
                          outsideDaysVisible: false,
                          todayDecoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
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
                          selectedDecoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Color(0XFF404041),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          defaultDecoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          weekendDecoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        headerStyle: HeaderStyle(
                          titleCentered: true,
                         
                        ),
                        availableCalendarFormats: const {
                          CalendarFormat.month: '',
                        },
                        startingDayOfWeek: StartingDayOfWeek.monday,
                      ),
                      SizedBox(
                        height: heightApp * 0.02,
                      ),
                      Text(
                        "قبل الظهر",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height: 40,
                          child: GetBuilder<ClinicController>(
                              init: ClinicController(),
                              initState: (_) {},
                              builder: (_) {
                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: GestureDetector(
                                        onTap: () {
                                          controller.onSelectCat2(index);
                                        },
                                        child: controller.selectedCatIndex2 !=
                                                index
                                            ? Container(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        const Color(0xFF628B8C),
                                                        const Color(0xFF9ED0D2),
                                                      ],
                                                      begin:
                                                          const FractionalOffset(
                                                              0.0, 0.0),
                                                      end:
                                                          const FractionalOffset(
                                                              1.0, 0.0),
                                                      stops: [0.0, 1.0],
                                                      tileMode: TileMode.clamp),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          top: 5),
                                                  child: Text(
                                                    "6:00 AM",
                                                    style: TextStyle(
                                                        color: kwhite,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ))
                                            : Container(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color: Color(0XFF404041)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          top: 5),
                                                  child: Text(
                                                    "6:00 AM",
                                                    style: TextStyle(
                                                        color: kwhite,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ))),
                                  ),
                                );
                              })),
                      SizedBox(
                        height: heightApp * 0.02,
                      ),
                      Text(
                        "بعد الظهر",
                        style: TextStyle(
                            color: kblack,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                          height: 40,
                          child: GetBuilder<ClinicController>(
                              init: ClinicController(),
                              initState: (_) {},
                              builder: (_) {
                                return ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: 3,
                                  itemBuilder: (context, index) => Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: GestureDetector(
                                        onTap: () {
                                          controller.onSelectCat3(index);
                                        },
                                        child: controller.selectedCatIndex3 !=
                                                index
                                            ? Container(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  gradient: LinearGradient(
                                                      colors: [
                                                        const Color(0xFF628B8C),
                                                        const Color(0xFF9ED0D2),
                                                      ],
                                                      begin:
                                                          const FractionalOffset(
                                                              0.0, 0.0),
                                                      end:
                                                          const FractionalOffset(
                                                              1.0, 0.0),
                                                      stops: [0.0, 1.0],
                                                      tileMode: TileMode.clamp),
                                                ),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          top: 5),
                                                  child: Text(
                                                    "6:00 AM",
                                                    style: TextStyle(
                                                        color: kwhite,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ))
                                            : Container(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color: Color(0XFF404041)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 10,
                                                          right: 10,
                                                          top: 5),
                                                  child: Text(
                                                    "6:00 AM",
                                                    style: TextStyle(
                                                        color: kwhite,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ))),
                                  ),
                                );
                              })),
                      SizedBox(
                        height: heightApp * 0.04,
                      ),
                      MainButton(text: "حجز موعد", press: () {}),
                      SizedBox(
                        height: heightApp * 0.04,
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
