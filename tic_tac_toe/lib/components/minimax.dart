import 'dart:math';

class Minimax {
  final String maximizingPlayer = "X";
  final String minimizingPlayer = "O";
  late int maxEval;
  late int minEval;

  int compute(List<String> board, int depth, String player) {
    int stateX = checkState(board, maximizingPlayer);
    int stateO = checkState(board, minimizingPlayer);

    if (stateX == 1) return 1;
    if (stateO == -1) return -1;
    if (depth == 0 || !board.contains("")) return 0;

    if (player == maximizingPlayer) {
      maxEval = -100;
      for (int i = 0; i < 9; i++) {
        if (board[i] == "") {
          List<String> copy = List.from(board);
          copy[i] = player;
          int eval = compute(copy, depth - 1, minimizingPlayer);
          maxEval = max(maxEval, eval);
        }
      }
      return maxEval;
    } else {
      minEval = 100;
      for (int i = 0; i < 9; i++) {
        if (board[i] == "") {
          List<String> copy = List.from(board);
          copy[i] = player;
          int eval = compute(copy, depth - 1, maximizingPlayer);
          minEval = min(minEval, eval);
        }
      }
      return minEval;
    }
  }

  int checkState(List<String> board, String player) {
    if ((board[0] == player && board[1] == player && board[2] == player) ||
        (board[3] == player && board[4] == player && board[5] == player) ||
        (board[6] == player && board[7] == player && board[8] == player) ||
        (board[0] == player && board[3] == player && board[6] == player) ||
        (board[1] == player && board[4] == player && board[7] == player) ||
        (board[2] == player && board[5] == player && board[8] == player) ||
        (board[0] == player && board[4] == player && board[8] == player) ||
        (board[2] == player && board[4] == player && board[6] == player)) {
      return (player == "X") ? 1 : -1;
    } else if (!board.contains("")) {
      return (0);
    } else {
      return 0;
    }
  }
}

void main() {
  List<String> board = ["", "", "X", "O", "", "", "O", "X", "X"];
  Minimax min = Minimax();
  int x = min.compute(board, 2, "O");
  print(x);
}
