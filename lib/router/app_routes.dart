import 'package:aorl_apps_getx/bindings/radio_binding.dart';
import 'package:aorl_apps_getx/features/counter/screens/counter_screen.dart';
import 'package:aorl_apps_getx/features/dio/screens/dio_screen.dart';
import 'package:aorl_apps_getx/features/passdata/screens/screen_one.dart';
import 'package:aorl_apps_getx/features/passdata/screens/screen_three.dart';
import 'package:aorl_apps_getx/features/passdata/screens/screen_two.dart';
import 'package:aorl_apps_getx/features/radio/screens/female_screen.dart';
import 'package:aorl_apps_getx/features/radio/screens/main_radio_screen.dart';
import 'package:aorl_apps_getx/features/radio/screens/male_screen.dart';
import 'package:aorl_apps_getx/features/textfield/screens/textfield_screen.dart';
import 'package:aorl_apps_getx/features/workers/screens/workers_screen.dart';
import 'package:aorl_apps_getx/router/route_name.dart';
import 'package:get/get.dart';

import '../features/passdata/screens/passdata_screen.dart';
import '../home_page.dart';

class AppRoutes {
  static final pages = [
    GetPage(
      name: RouteName.home,
      page: () => const HomePage(),
    ),
    GetPage(name: RouteName.counter, page: () => const CounterScreen()),
    GetPage(name: RouteName.textfield, page: () => const TextFieldScreen()),
    GetPage(name: RouteName.workers, page: () => const WorkerScreen()),
    GetPage(name: RouteName.passData, page: () => const PassDataScreen()),
    GetPage(name: RouteName.screenone, page: () => const ScreenOne()),
    GetPage(name: RouteName.screentwo, page: () => const ScreenTwo()),
    GetPage(name: RouteName.screenthree, page: () => const ScreenThree()),
    GetPage(name: RouteName.dioscreen, page: () => DioScreen()),
    GetPage(
      name: RouteName.radioScreen,
      page: () => MainRadioScreen(),
      binding: RadioBinding(),
    ),
    GetPage(
      name: RouteName.maleScreen,
      page: () => const MaleScreen(),
    ),
    GetPage(
      name: RouteName.femaleScreen,
      page: () => const FemaleScreen(),
    ),
  ];
}
