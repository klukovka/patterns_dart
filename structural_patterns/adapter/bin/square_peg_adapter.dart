import 'dart:math';

import 'round_peg.dart';
import 'square_peg.dart';

class SquarePegAdapter implements RoundPeg {
  final SquarePeg _squarePeg;

  const SquarePegAdapter(this._squarePeg);

  @override
  double get radius => _squarePeg.width * sqrt(2) / 2;
}
