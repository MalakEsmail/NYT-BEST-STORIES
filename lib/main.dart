import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nytbeststories/cubit/bloc_observer.dart';
import 'package:nytbeststories/cubit/home_cubit.dart/home_articles_cubit.dart';
import 'package:nytbeststories/enum/device_type.dart';
import 'package:nytbeststories/network/remote/dio_helper.dart';
import 'package:nytbeststories/screens/desctop_home_screen.dart';
import 'package:nytbeststories/screens/mobile_home_screen.dart';
import 'package:nytbeststories/widgets/info_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    return BlocProvider(
      create: (context) => HomeArticlesCubit()..getHomeArticlesData(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home:  InfoWidget(key, (context, deviceInfo) {
    
              if (deviceInfo.deviceType== TheDeviceType.Mobile) {
                return MobileHomeScreen();
              } else {
                return DesktopHomeScreen();
              }
            }),
          ),
    );
  }
}
