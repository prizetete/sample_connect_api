// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_connect_api/constant.dart';
import 'package:sample_connect_api/getit/locator.dart';
import 'package:sample_connect_api/repositories/user_repository.dart';
import 'package:sample_connect_api/screens/components/Lists/grid_screen.dart';
import 'package:sample_connect_api/screens/components/Lists/page_view_screen.dart';
import 'package:sample_connect_api/screens/components/Lists/list_view_screen.dart';
import 'package:sample_connect_api/screens/components/button_screen.dart';
import 'package:sample_connect_api/screens/components/display_screen.dart';
import 'package:sample_connect_api/screens/components/layout_screen.dart';
import 'package:sample_connect_api/screens/components/text_screen.dart';
import 'package:sample_connect_api/screens/home_screen.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

Future<void> dddd() async {
  final repo = getIt<IUserRepository>();

  // ทดสอบดึงผู้ใช้ทั้งหมด
  final users = await repo.fetchUsers();
  print('Users count: ${users.length}');

  // ทดสอบดึงผู้ใช้ตาม ID
  final user = await repo.fetchUserById(1);
  print('User #1: ${user.name}');
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final IUserRepository repository = getIt<IUserRepository>();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // 2.1 สร้าง instance ของ GoRouter
    final GoRouter router = GoRouter(
      initialLocation: AppRoutes.home.path, // เส้นทางเริ่มต้น
      routes: [
        GoRoute(
          path: AppRoutes.home.path,
          name: AppRoutes.home.name,
          builder: (context, state) => HomeScreen(),
        ),
        GoRoute(
          path: AppRoutes.buttonComponent.path,
          name: AppRoutes.buttonComponent.name,
          builder: (context, state) => ButtonScreen(),
        ),
        GoRoute(
          path: AppRoutes.textComponent.path,
          name: AppRoutes.textComponent.name,
          builder: (context, state) => TextScreen(),
        ),
        GoRoute(
          path: AppRoutes.layoutComponent.path,
          name: AppRoutes.layoutComponent.name,
          builder: (context, state) => LayoutScreen(),
        ),
        GoRoute(
          path: AppRoutes.displayComponent.path,
          name: AppRoutes.displayComponent.name,
          builder: (context, state) => DisplayScreen(),
        ),
        GoRoute(
          path: AppRoutes.listViewComponent.path,
          name: AppRoutes.listViewComponent.name,
          builder: (context, state) => ListViewScreen(),
        ),
        GoRoute(
          path: AppRoutes.pageViewComponent.path,
          name: AppRoutes.pageViewComponent.name,
          builder: (context, state) => PageViewScreen(),
        ),
        GoRoute(
          path: AppRoutes.gridViewComponent.path,
          name: AppRoutes.gridViewComponent.name,
          builder: (context, state) => GridScreen(),
        ),
        // GoRoute(
        //   path: '/detail/:id',
        //   name: 'detail',
        //   builder: (context, state) {
        //     final id = state.params['id']!;
        //     return DetailPage(id: id);
        //   },
        // ),
        // สามารถเพิ่ม nested routes ได้
        // ShellRoute(
        //   builder: (context, state, child) => AppScaffold(child: child),
        //   routes: [
        //     GoRoute(
        //       path: '/settings',
        //       name: 'settings',
        //       builder: (context, state) => SettingsPage(),
        //     ),
        //   ],
        // ),
      ],
      // // 2.2 กรณี redirect ตามเงื่อนไข
      // redirect: (context, state) {
      //   final loggedIn = false; // ตัวอย่างเช็คสถานะล็อกอิน
      //   final goingToLogin = state.subloc == '/login';
      //   if (!loggedIn && !goingToLogin) return '/login';
      //   return null;
      // },
      // // 2.3 หน้า fallback เมื่อ route ไม่ตรง
      // errorBuilder: (context, state) => NotFoundPage(),
    );

    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: const Scaffold(body: HomeScreen()),
    );
  }
}
