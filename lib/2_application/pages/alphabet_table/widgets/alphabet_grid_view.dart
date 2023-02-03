import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learnpunjabi/2_application/pages/alphabet/alphabet_page.dart';
import 'package:learnpunjabi/2_application/pages/alphabet_table/widgets/alphabet.dart';

import '../cubit/alphabet_cubit.dart';

class AlphabetGridView extends StatelessWidget {
  const AlphabetGridView({
    Key? key,
    required this.alphabetList,
    // required this.onTap,
  }) : super(key: key);

  final List<String> alphabetList;
  // final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 41,
        itemBuilder: (BuildContext context, index) {
          BlocProvider.of<AlphabetCubit>(context).number = index;
          return Hero(
            tag: alphabetList[index],
            child: Alphabet(
              alphabet: alphabetList[index],
              onTap: () {
                //What should the individual button do?
                showDialog(
                    context: context,
                    builder: ((_) =>
                        // BlocProvider.value(
                        //     value:
                        //     BlocProvider.of<AlphabetCubit>(context),
                        //     child:
                        AlphabetPage(
                          index: index,
                          character: alphabetList[index],
                        ))
                    // )
                    );
              },
            ),
          );
        });
  }
}
