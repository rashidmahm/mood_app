import 'package:flutter/material.dart';
import 'package:openai_ada/view/home_screen/drawer.dart';
import 'package:openai_ada/view/home_screen/home_screen.dart';
import 'package:openai_ada/view/screens/journal_screen.dart';
import 'package:openai_ada/view/screens/notification_screen.dart';
import 'package:openai_ada/view/screens/reminder_screen.dart';
import 'package:openai_ada/view/screens/setting.dart';
import 'package:openai_ada/view/widgets/chat_page.dart';
import 'package:provider/provider.dart';

import 'model/font_model.dart';

//global access for accessing device screen
late Size mq;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FontSizeModel()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        initialRoute: '/',
        routes: {
          '/': (context) => const MyHomeScreen(),
          '/myHomeScreen': (context) => const MyHomeScreen(),
          '/drawerScreen': (context) => const DrawerScreen(),
          '/settingScreen': (context) => const SettingScreen(),
          '/chatPage': (context) => const ChatPage(),
          '/notificationScreen': (context) => const NotificationScren(),
          '/reminderScreen': (context) => const ReminderScreen(),
          '/journalScreen': (context) => const JournalScreen(),
          //'/myNoteScreen': (context) => const MyNoteScreen(),
        },
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        darkTheme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      ),
    );
  }
}
