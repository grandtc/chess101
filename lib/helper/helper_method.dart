bool isWhite(int index) {
  int x = index ~/ 8; //row
  int y = index % 8; //column
  bool isWhite = (x + y) % 2 == 0;
  return isWhite;
}
