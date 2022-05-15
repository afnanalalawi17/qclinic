import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
class GetLocationController extends GetxController {
  //TODO: Implement GetLocationController
  //TODO: Implement GetLocationController
final Latitude = 0.0.obs;
  final Longitude = 0.0.obs;
  final count = 0.obs;
  
  @override
  void onInit() {
    super.onInit();
    AskForPers();
    print("object");
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
   void CheckPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      AskForPers();
    } else {
      // GetLocation();
    }
  }

  void AskForPers() async {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == 'whileInUse' || permission == 'always') {
      // GetLocation();
    }
  }

  void GetLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    Latitude.value == position.altitude;
    Longitude.value == position.longitude;
  }
}
