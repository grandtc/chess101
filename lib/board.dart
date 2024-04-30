import 'package:chess101/components/piece.dart';
import 'package:chess101/components/square.dart';
import 'package:chess101/values/color.dart';
import 'package:flutter/material.dart';

import 'helper/helper_method.dart';

class Board extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => BoardState();
}

class BoardState extends State<Board> {
  // 2 dimensional list for the board
  // each position contain a piece
  late List<List<ChessPiece?>> board;

  @override
  void initState() {
    super.initState();
    _initializeBoard();
  }

  //Initialize Board
  void _initializeBoard() {
    //place pieces on position
    //with nulls meaning no pieces in those squares
    List<List<ChessPiece?>> newBoard =
        List.generate(8, (index) => List.generate(8, (index) => null));

    //place pawns
    //place rooks
    //place knights
    //place bishop
    //place queens
    //place kings
  }

  //create pieces
  ChessPiece WhitePawn = ChessPiece(
    type: ChessPieceType.pawn,
    isWhite: true,
    imagePath: 'lib/pieces_basic/white-pawn.png',
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: GridView.builder(
          itemCount: 8 * 8,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8),
          itemBuilder: (context, index) {
            return Square(
              isWhite: isWhite(index),
              piece: WhitePawn,
            );
          }),
    );
  }
}
