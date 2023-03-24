import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:video_demo/screens/video_screen.dart';

import 'blocs/cubit/video_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<VideoCubit>(
      create: (context) => VideoCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Video Demo',
        theme: ThemeData.dark(),
        home: VideoScreen(),
      ),
    );
  }
}
