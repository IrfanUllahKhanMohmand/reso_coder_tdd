import 'package:reso_coder_tdd/features/number_trivia/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  const NumberTriviaModel({
    required super.text,
    required super.number,
  });

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(
      text: json['text'],
      number: (json['number'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'number': number,
    };
  }

  factory NumberTriviaModel.fromMap(Map<String, dynamic> map) {
    return NumberTriviaModel(
      text: map['text'],
      number: map['number'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'number': number,
    };
  }

// From entity to model
  factory NumberTriviaModel.fromEntity(NumberTrivia entity) {
    return NumberTriviaModel(
      text: entity.text,
      number: entity.number,
    );
  }

// From model to entity
  NumberTrivia toEntity() {
    return NumberTrivia(
      text: text,
      number: number,
    );
  }
}
