import 'package:flutter/material.dart';

class StageSelection extends StatefulWidget {
  const StageSelection({Key? key}) : super(key: key);

  @override
  State<StageSelection> createState() => _StageSelectionState();
}

class _StageSelectionState extends State<StageSelection> {

  //TODO: Add responsiveness to page

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          OutlinedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back')),
          const Text("Stage Selector"),
          Container(
            height: 50, //Should be responsive
            child: ListView(
                scrollDirection: Axis.horizontal,
                children: List<Widget>.generate(
                    8,
                    (index) => OutlinedButton(
                          onPressed: () {
                            debugPrint('Pressed Stage #$index');
                          },
                          child: Text(index.toString()),
                        ))),
          ),
          Container(
              height: 300, //Should be responsive
              width: 300, //Should be responsive
              child: GridView.count(
                crossAxisCount: 5,
                children: List.generate(15, (index) { //TODO: Have this list generate based on puzzles files
                  return OutlinedButton(
                      onPressed: () {
                        debugPrint('Pressed Puzzle #$index');
                      },
                      child: Text('Puzzle #$index'));
                }),
              )),
        ],
      ),
    );
  }
}
