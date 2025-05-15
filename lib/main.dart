// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_connect_api/bloc/bloc/user_bloc.dart';
import 'package:sample_connect_api/getit/locator.dart';
import 'package:sample_connect_api/repositories/user_repository.dart';

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
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Scaffold(body: UserPage()),
    );
  }
}

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => UserBloc(getIt<IUserRepository>())..add(FetchUser()),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(title: const Text('User')),
        body: Center(
          child: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is UserLoaded) {
                var ppp = state.user.first.id;
                return Text('$ppp');
              }
              return Text('fail');
            },
          ),
        ),
      ),
    );
  }
}
