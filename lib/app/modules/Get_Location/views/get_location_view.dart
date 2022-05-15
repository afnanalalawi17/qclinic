import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_maps_place_picker/google_maps_place_picker.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:qclinic/Shared/color/colors.dart';
import 'package:qclinic/Shared/widget/main_button.dart';
import 'package:qclinic/app/routes/app_pages.dart';

import '../controllers/get_location_controller.dart';

class GetLocationView extends GetView<GetLocationController> {
  final controller = Get.put(GetLocationController());
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
                  "تحديد الموقع",
                  style: TextStyle(
                      color: kblack,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.ADD_ADAPTATION);
                  },
                  child:  SizedBox(
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
            )),
        body: PlacePicker(
          apiKey:
              'AIzaSyCHsQnNAuF9JIJ5mqdxHUjX33FVlOSSIPM', // Put YOUR OWN KEY here.
          initialPosition:
              LatLng(controller.Latitude.value, controller.Longitude.value),
          hidePlaceDetailsWhenDraggingPin: false,
          enableMapTypeButton: false,
          selectInitialPosition: true,
          automaticallyImplyAppBarLeading: false,
          enableMyLocationButton: false,
          autocompleteLanguage: 'ar',
          region: 'Saudia Arabia',
          useCurrentLocation: true,
          selectedPlaceWidgetBuilder:
              (_, selectedPlace, state, isSearchBarFocused) {
            return FloatingCard(
              bottomPosition: 0,
              leftPosition: 0,
              elevation: 5,
              width: MediaQuery.of(context).size.width,
              height: 240,
              borderRadius: BorderRadius.circular(20),
              child: state == SearchingState.Searching
                  ? Center(child: CircularProgressIndicator())
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Sheet_Divider(),
                          SizedBox(height: 20),
                          Text(
                            ' الموقع',
                            style: TextStyle(
                                color: kblue, fontWeight: FontWeight.bold),
                          ),
                          //SizedBox(height: 10),
                          // controller.GetCityName(
                          //     selectedPlace!.formattedAddress.toString()),
                          SizedBox(height: 25),
                          Text(
                            selectedPlace!.formattedAddress!.toString(),
                            style: TextStyle(fontWeight: FontWeight.bold),
                            //  style: KText_Style_12_R,
                          ),
                          SizedBox(height: 30),
                          Padding(
                            padding: const EdgeInsets.only(left: 30, right: 30),
                            child: MainButton(
                                text: "تأكيد الموقع",
                                press: () {
                                 Get.toNamed(Routes.ADD_ADAPTATION);
                                }),
                          ),
                          
                        ],
                      ),
                    ),
            );
          },
        ),
      );
    
  }
}
