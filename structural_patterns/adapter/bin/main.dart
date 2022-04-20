import 'round_hole.dart';
import 'round_peg.dart';
import 'square_peg.dart';
import 'square_peg_adapter.dart';

void main() {
  final hole = RoundHole(5);
  final roundPeg = RoundPeg(5);
  print(hole.fits(roundPeg));

  final smallSquarePeg = SquarePeg(5);
  final largeSquarePeg = SquarePeg(10);

  final smallSquarePegAdapter = SquarePegAdapter(smallSquarePeg);
  final largeSquarePegAdapter = SquarePegAdapter(largeSquarePeg);

  print(hole.fits(smallSquarePegAdapter));
  print(hole.fits(largeSquarePegAdapter));
}
