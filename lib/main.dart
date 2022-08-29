import 'package:events/prefs/shared_pref_controller.dart';
import 'package:events/screens/add_new_event.dart';
import 'package:events/screens/categories_screen.dart';
import 'package:events/screens/event_images_screen.dart';
import 'package:events/screens/events_screen.dart';
import 'package:events/screens/launch_screen.dart';
import 'package:events/screens/login_screen.dart';
import 'package:events/screens/out_boarding_screen.dart';
import 'package:events/screens/single_event_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initPref();
  debugPaintSizeEnabled = false;
  /*debugPaintBaselinesEnabled = false;
  debugPaintLayerBordersEnabled = false;
  debugPaintPointersEnabled = false;
  debugRepaintRainbowEnabled = false;
  debugRepaintTextRainbowEnabled = false;
  debugDisableClipLayers = false;
  debugDisablePhysicalShapeLayers = false;
  debugDisableOpacityLayers = false;*/
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Events",
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Color(0xff253975),
            ),
      ),
      initialRoute: '/launch_screen',
      routes: {
        '/launch_screen': (context) => const LaunchScreen(),
        '/out_boarding_screen': (context) => const OutBoardingScreen(),
        '/login_screen': (context) => const LoginScreen(),
        '/categories_screen': (context) => const CategoriesScreen(),
        '/events_screen': (context) => const EventsScreen(),
        '/single_event_screen': (context) => const SingleEventScreen(),
        '/event_images_screen': (context) => const EventImagesWidget(),
        '/add_new_event': (context) => const AddNewEvent(),
      },
      debugShowCheckedModeBanner: false,
      home: LaunchScreen(),
    );
  }
}
