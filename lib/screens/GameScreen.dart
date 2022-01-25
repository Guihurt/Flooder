import 'package:flutter/material.dart';
import 'package:flooder/puzzles/puzzle.dart';
import 'dart:convert';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key, required this.puzzleString}) : super(key: key);

   final String puzzleString;

  /*
  Game States:
  - loadingPuzzle && !isPuzzleSolved == gameInit
  - !loadingPuzzle && !isPuzzleSolved == gameRunning
  - !loadingPuzzle && isPuzzleSolved == gameDone

  Legend:
  - [] = Phase 3 only

  gameInit:
  - Loading screen as it builds the puzzle from file [data source if not prefetched]
  - Puzzle loading animations

  gameRunning:
  - Renders widget and surrounding UI elements
  - Runs game logic

  gameDone:
  - Renders end game screen/overlay(need to decide which) [and prefetches next puzzle]
  */

  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final bool loadingPuzzle = true;
  final bool isPuzzleSolved = false;
  late final Puzzle puzzle;

  Widget _buildLoading() {
    puzzle = Puzzle.fromJson(jsonDecode(widget.puzzleString));
    debugPrint(puzzle.start[0].toString());
    return const Text("loading...");
  }

  Widget _buildGame() {
    return const Text("playing...");
  }

  Widget _buildEnd() {
    return const Text("game ended.");
  }

  @override
  Widget build(BuildContext context) {
    if (!loadingPuzzle && isPuzzleSolved) {
      return _buildEnd();
    }
    else if (!loadingPuzzle && !isPuzzleSolved) {
      return _buildGame();
    }
    else {
      return _buildLoading();
    }
  }
}
