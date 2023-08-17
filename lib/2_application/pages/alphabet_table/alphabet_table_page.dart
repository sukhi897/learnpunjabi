import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnpunjabi/2_application/pages/alphabet_table/cubit/alphabet_cubit.dart';
import 'package:learnpunjabi/2_application/pages/alphabet_table/widgets/alphabet_grid_view.dart';
import 'package:learnpunjabi/2_application/pages/alphabet_table/widgets/error_message.dart';
import 'package:learnpunjabi/injection.dart';

class AlphabetTablePageWrapperProvider extends StatelessWidget {
  const AlphabetTablePageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<AlphabetCubit>(),
      child: const AlphabetTablePage(),
    );
  }
}

class AlphabetTablePage extends StatelessWidget {
  const AlphabetTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AlphabetCubit>(context).getListOfAlphabets();
    final themeData = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('GURMUKHI ALPHABET'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: mediaQuery.size.width * 0.8,
              ),
              // color: themeData.backgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Learn the Gurmukhi alphabet and have fun with colorful illustrations.',
                    style: TextStyle(
                      fontSize: 18,
                      color: themeData.colorScheme.primary,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 48),
                  BlocBuilder<AlphabetCubit, AlphabetState>(
                    builder: (c, state) {
                      if (state is AlphabetInitial) {
                        return const SizedBox(
                          height: 42,
                        );
                      } else if (state is AlphabetListStateLoading) {
                        return CircularProgressIndicator(
                          color: themeData.colorScheme.secondary,
                        );
                      } else if (state is AlphabetListStateLoaded) {
                        final alphabetList = state.alphabetList;
                        return AlphabetGridView(
                          cntx: context,
                          alphabetList: alphabetList,
                        );
                      } else if (state is AlphabetListStateError) {
                        return ErrorMessage(message: state.message);
                      }
                      return const SizedBox();
                    },
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
