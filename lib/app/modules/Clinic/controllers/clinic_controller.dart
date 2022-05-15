import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

class ClinicController extends GetxController {
  //TODO: Implement ClinicController
  DateTime? _selectedDay;
  DateTime? day;

  DateTime? selectedDay;

  DateTime? focusedDay;
  DateTime _focusedDay = DateTime.now();

  @override
  void onInit() {
    super.onInit();
  }

  var terms = false;
  var selectedGender = "".obs;
  onChangeGender(var gender) {
    selectedGender.value = gender;
    print(gender);
    update();
  }

  void checkBoxCheck(bool value) {
    terms = value;
    update();
  }

  var selectedCatIndex;
  onSelectCat(int index) {
    selectedCatIndex = index;
    update();
  }

  var selectedCatIndex2;
  onSelectCat2(int index) {
    selectedCatIndex2 = index;
    update();
  }

  var selectedCatIndex3;
  onSelectCat3(int index) {
    selectedCatIndex3 = index;
    update();
  }

  var selectedCatIndex4;
  onSelectCat4() {
    if (!isSameDay(_selectedDay, selectedDay)) {
      _selectedDay = selectedDay;

    }
    print(_selectedDay);
    print(selectedDay);


    update();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
