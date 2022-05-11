import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameProvider with ChangeNotifier {
  bool _isPlayerOne = true;
  bool _isclickable = true;
  int _checkedBoxes = 0;
  String _winner = "";
  final List<String> _symbols = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  bool get isPlayerOne => _isPlayerOne;
  bool get isClickable => _isclickable;
  int get checkedBoxes => _checkedBoxes;
  String get winner => _winner;
  List<String> get symbols => _symbols;

  void playerTurn(int index) {
    if (_isPlayerOne && _isclickable && _symbols[index] == '') {
      _symbols[index] = 'x';
      _checkedBoxes += 1;
      _isPlayerOne = !_isPlayerOne;
    } else if (!_isPlayerOne && _isclickable && _symbols[index] == '') {
      _symbols[index] = 'o';
      _checkedBoxes += 1;
      _isPlayerOne = !_isPlayerOne;
    }
    notifyListeners();
    winnerCheck();
  }

  void winnerCheck() {
    if (_symbols[0] != "" &&
        _symbols[0] == _symbols[1] &&
        _symbols[0] == _symbols[2]) {
      _winner = _symbols[0] + " won";
      _isclickable = false;
    } else if (_symbols[3] != "" &&
        _symbols[3] == _symbols[4] &&
        _symbols[3] == _symbols[5]) {
      _winner = _symbols[3] + " won";
      _isclickable = false;
    } else if (_symbols[6] != "" &&
        _symbols[6] == _symbols[7] &&
        _symbols[6] == _symbols[8]) {
      _winner = _symbols[6] + " won";
      _isclickable = false;
    } else if (_symbols[0] != "" &&
        _symbols[0] == _symbols[3] &&
        _symbols[0] == _symbols[6]) {
      _winner = _symbols[0] + " won";
      _isclickable = false;
    } else if (_symbols[1] != "" &&
        _symbols[1] == _symbols[4] &&
        _symbols[1] == _symbols[7]) {
      _winner = _symbols[1] + " won";
      _isclickable = false;
    } else if (_symbols[2] != "" &&
        _symbols[2] == _symbols[5] &&
        _symbols[2] == _symbols[8]) {
      _winner = _symbols[2] + " won";
      _isclickable = false;
    } else if (_symbols[0] != "" &&
        _symbols[0] == _symbols[4] &&
        _symbols[0] == _symbols[8]) {
      _winner = _symbols[0] + " won";
      _isclickable = false;
    } else if (_symbols[2] != "" &&
        _symbols[2] == _symbols[4] &&
        _symbols[2] == _symbols[6]) {
      _winner = _symbols[2] + " won";
      _isclickable = false;
    } else if (_checkedBoxes == 9) {
      _winner = "Draw";
      _isclickable = false;
    }
  }

  void restart() {
    _isPlayerOne = true;
    _isclickable = true;
    _checkedBoxes = 0;
    _winner = "";
    for (int i = 0; i < 9; i++) {
      _symbols[i] = "";
    }
    notifyListeners();
  }
}
