import 'package:flutter/material.dart';
import 'package:learnpunjabi/2_application/pages/alphabet_table/widgets/alphabet_popup.dart';
import 'package:learnpunjabi/2_application/pages/alphabet_table/widgets/alphabet.dart';


class AlphabetGridView extends StatelessWidget {
  const AlphabetGridView({
    Key? key,
    required this.alphabetList,
  }) : super(key: key);

  final List<String> alphabetList;

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
          return Hero(
            tag: alphabetList[index],
            child: Alphabet(
              alphabet: alphabetList[index],
              onTap: () {
                showDialog(
                    context: context,
                    builder: ((_) =>
                        AlphabetPopup(
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
