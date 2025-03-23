class Minimax {
  /// minimax - the minimax algorithm.
  /// @board: state of the board
  /// @player: computer or player playing
  /// @position: state of node
  /// @depth: the depth of tree traversed.
  /// Return: Numerical Value of score if maximizing or minimizing player.
  int minimax(List<String> board, int depth, bool maxPlayer) {
    late String playerSymbol;
    late int state, maxEval, minEval, eval, i;

    if (maxPlayer) {
      playerSymbol = "X";
    } else {
      playerSymbol = "O";
    }
    state = checkState(board, playerSymbol);
    if (depth == 0 || state >= -1) {
      return state;
    }

    if (maxPlayer) {
      maxEval = 1000;
      for (i = 0; i < 9; i++) {
        //create a function that fills the boards
      }
    }

    return 1;
  }

  /// checkState - checks the winner of the board
  /// @board: board state.
  /// Return: 1 if maximimzing, -1 if mimizing and 0 for draw.
  int checkState(List<String> board, String player) {
    if ((board[0] == player && board[1] == player && board[2] == player) ||
        (board[3] == player && board[4] == player && board[5] == player) ||
        (board[6] == player && board[7] == player && board[8] == player) ||
        (board[0] == player && board[3] == player && board[6] == player) ||
        (board[1] == player && board[4] == player && board[7] == player) ||
        (board[2] == player && board[5] == player && board[8] == player) ||
        (board[0] == player && board[4] == player && board[8] == player) ||
        (board[2] == player && board[4] == player && board[6] == player)) {
      if (player == "X") {
        return (1);
      } else {
        return (-1);
      }
    } else if (!board.contains(null)) {
      return (0);
    } else {
      return 0;
    }
  }
}

List<String> board(List<String> board) {

  return [];
}
