import 'package:get/get.dart';

import '../modules/Adaptation/bindings/adaptation_binding.dart';
import '../modules/Adaptation/views/adaptation_view.dart';
import '../modules/Add_Adaptation/bindings/add_adaptation_binding.dart';
import '../modules/Add_Adaptation/views/add_adaptation_view.dart';
import '../modules/Add_Animale/bindings/add_animale_binding.dart';
import '../modules/Add_Animale/views/add_animale_view.dart';
import '../modules/Advertise/bindings/advertise_binding.dart';
import '../modules/Advertise/views/advertise_view.dart';
import '../modules/Basic/bindings/basic_binding.dart';
import '../modules/Basic/views/basic_view.dart';
import '../modules/Cart/bindings/cart_binding.dart';
import '../modules/Cart/views/cart_view.dart';
import '../modules/Chat/bindings/chat_binding.dart';
import '../modules/Chat/views/chat_view.dart';
import '../modules/Clinic/bindings/clinic_binding.dart';
import '../modules/Clinic/views/clinic_view.dart';
import '../modules/Detials_Adaptation/bindings/detials_adaptation_binding.dart';
import '../modules/Detials_Adaptation/views/detials_adaptation_view.dart';
import '../modules/Detials_shop/bindings/detials_shop_binding.dart';
import '../modules/Detials_shop/views/detials_shop_view.dart';
import '../modules/Edit_Profile/bindings/edit_profile_binding.dart';
import '../modules/Edit_Profile/views/edit_profile_view.dart';
import '../modules/Favorite/bindings/favorite_binding.dart';
import '../modules/Favorite/views/favorite_view.dart';
import '../modules/Get_Location/bindings/get_location_binding.dart';
import '../modules/Get_Location/views/get_location_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/Notification/bindings/notification_binding.dart';
import '../modules/Notification/views/notification_view.dart';
import '../modules/Otp/bindings/otp_binding.dart';
import '../modules/Otp/views/otp_view.dart';
import '../modules/Profile/bindings/profile_binding.dart';
import '../modules/Profile/views/profile_view.dart';
import '../modules/Setting/bindings/setting_binding.dart';
import '../modules/Setting/views/setting_view.dart';
import '../modules/Shop/bindings/shop_binding.dart';
import '../modules/Shop/views/shop_view.dart';
import '../modules/Signup/bindings/signup_binding.dart';
import '../modules/Signup/views/signup_view.dart';
import '../modules/boarding/bindings/boarding_binding.dart';
import '../modules/boarding/views/boarding_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOARDING;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BOARDING,
      page: () => BoardingView(),
      binding: BoardingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SHOP,
      page: () => ShopView(),
      binding: ShopBinding(),
    ),
    GetPage(
      name: _Paths.DETIALS_SHOP,
      page: () => DetialsShopView(),
      binding: DetialsShopBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.CLINIC,
      page: () => ClinicView(),
      binding: ClinicBinding(),
    ),
    GetPage(
      name: _Paths.ADAPTATION,
      page: () => AdaptationView(),
      binding: AdaptationBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ADAPTATION,
      page: () => AddAdaptationView(),
      binding: AddAdaptationBinding(),
    ),
    GetPage(
      name: _Paths.DETIALS_ADAPTATION,
      page: () => DetialsAdaptationView(),
      binding: DetialsAdaptationBinding(),
    ),
    GetPage(
      name: _Paths.ADVERTISE,
      page: () => AdvertiseView(),
      binding: AdvertiseBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ANIMALE,
      page: () => AddAnimaleView(),
      binding: AddAnimaleBinding(),
    ),
    GetPage(
      name: _Paths.BASIC,
      page: () => BasicView(),
      binding: BasicBinding(),
    ),
    GetPage(
      name: _Paths.GET_LOCATION,
      page: () => GetLocationView(),
      binding: GetLocationBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => EditProfileView(),
      binding: EditProfileBinding(),
    ),
  ];
}
