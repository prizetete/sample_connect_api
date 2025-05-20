// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_connect_api/bloc/bloc/user_bloc.dart';
import 'package:sample_connect_api/getit/locator.dart';
import 'package:sample_connect_api/repositories/user_repository.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key, this.isShowAppbar = true});

  final bool isShowAppbar;

  @override
  Widget build(BuildContext context) {
    List<String> items = List.generate(10, (i) => 'Item ${i + 1}');
    AppBar? appBar;
    if (isShowAppbar) {
      appBar = AppBar(
        title: const Text('ListView Screen'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
      );
    }

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create:
              (context) => UserBloc(getIt<IUserRepository>())..add(FetchUser()),
        ),
      ],
      child: Scaffold(
        appBar: appBar,
        body: Column(
          children: [
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 12.0),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      items[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              child: BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  if (state is UserLoaded) {
                    return ListView.builder(
                      itemCount: state.user.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title: Text(
                              '${index + 1}.${state.user[index].name}',
                            ),
                            subtitle: Text(state.user[index].email),
                            leading: const Icon(Icons.list),
                            trailing: const Icon(Icons.arrow_forward),
                            onTap: () {
                              // Handle tap
                            },
                          ),
                        );
                      },
                    );
                  }
                  return const Center(child: CircularProgressIndicator());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
