import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_connect_api/bloc/bloc/user_bloc.dart';
import 'package:sample_connect_api/constant.dart';
import 'package:sample_connect_api/getit/locator.dart';
import 'package:sample_connect_api/repositories/user_repository.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.textComponent.name);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.green),
                child: const Text(
                  'Text',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.buttonComponent.name);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                child: const Text(
                  'Button',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.layoutComponent.name);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.amber),
                child: const Text(
                  'Layout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.displayComponent.name);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.deepOrange),
                child: const Text(
                  'List Data',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.interactiveComponent.name);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.pink),
                child: const Text(
                  'Interactive Viewer',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.imageRouteComponent.name);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.purple),
                child: const Text(
                  'Image',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.snackNDialogComponent.name);
                },
                style: TextButton.styleFrom(backgroundColor: Colors.teal),
                child: const Text(
                  'Snack and Dialog',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
