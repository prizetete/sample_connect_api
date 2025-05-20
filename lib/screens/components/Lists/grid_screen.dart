import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_connect_api/bloc/bloc/user_bloc.dart';
import 'package:sample_connect_api/getit/locator.dart';
import 'package:sample_connect_api/repositories/user_repository.dart';
import 'package:sample_connect_api/utils/utils.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({super.key, this.isShowAppbar = true});

  final bool isShowAppbar;

  @override
  Widget build(BuildContext context) {
    AppBar? appBar;
    if (isShowAppbar) {
      appBar = AppBar(
        title: const Text('GridView Screen'),
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
        body: BlocBuilder<UserBloc, UserState>(
          builder: (context, state) {
            if (state is UserLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is UserLoaded) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.0,
                ),
                itemCount: state.user.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Container(
                      color: getRandomColor(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text(state.user[index].name)),
                      ),
                    ),
                  );
                },
              );
            } else if (state is UserError) {
              return Center(child: Text(state.message));
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
