class Puzzle {
  final int row;
  final int column;
  final List<dynamic> solution;
  final List<dynamic> start;

  Puzzle(this.row, this.column, this.solution, this.start);

  Puzzle.fromJson(Map<String, dynamic> json)
      : row = json['row'],
        column = json['col'],
        solution = json['solution'],
        start = json['start'];

  Map<String, dynamic> toJson() => {
        'row': row,
        'column': column,
        'solution': solution,
        'start': start
      };
}
