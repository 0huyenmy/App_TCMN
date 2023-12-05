// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FaqModel {
  final int? id;
  final String? question;
  final String? answer;
  final bool? is_default;
  final String? created_at;
  final String? updated_at;
  FaqModel({
    this.id,
    this.question,
    this.answer,
    this.is_default,
    this.created_at,
    this.updated_at,
  });

  FaqModel copyWith({
    int? id,
    String? question,
    String? answer,
    bool? is_default,
    String? created_at,
    String? updated_at,
  }) {
    return FaqModel(
      id: id ?? this.id,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      is_default: is_default ?? this.is_default,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'question': question,
      'answer': answer,
      'is_default': is_default,
      'created_at': created_at,
      'updated_at': updated_at,
    };
  }

  factory FaqModel.fromJson(Map<String, dynamic> map) {
    return FaqModel(
      id: map['id'] != null ? map['id'] as int : null,
      question: map['question'] != null ? map['question'] as String : null,
      answer: map['answer'] != null ? map['answer'] as String : null,
      is_default: map['is_default'] != null ? map['is_default'] as bool : null,
      created_at:
          map['created_at'] != null ? map['created_at'] as String : null,
      updated_at:
          map['updated_at'] != null ? map['updated_at'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  // factory FaqModel.fromJson(String source) => FaqModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FaqModel(id: $id, question: $question, answer: $answer, is_default: $is_default, created_at: $created_at, updated_at: $updated_at)';
  }

  @override
  bool operator ==(covariant FaqModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.question == question &&
        other.answer == answer &&
        other.is_default == is_default &&
        other.created_at == created_at &&
        other.updated_at == updated_at;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        question.hashCode ^
        answer.hashCode ^
        is_default.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode;
  }
}
