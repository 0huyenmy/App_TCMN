// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:journal_linker/models/expertises_model/media_model.dart';

class ExpertisesModel {
  final int? user_id;
  final String? updated_at;
  final String? created_at;
  final int? id;
  final String? front;
  final String? left;
  final String? right;
  final String? upper;
  final String? lower;
  final List<MediaModel>? media;
  ExpertisesModel({
    this.user_id,
    this.updated_at,
    this.created_at,
    this.id,
    this.front,
    this.left,
    this.right,
    this.upper,
    this.lower,
    this.media,
  });

  ExpertisesModel copyWith({
    int? user_id,
    String? updated_at,
    String? created_at,
    int? id,
    String? front,
    String? left,
    String? right,
    String? upper,
    String? lower,
    List<MediaModel>? media,
  }) {
    return ExpertisesModel(
      user_id: user_id ?? this.user_id,
      updated_at: updated_at ?? this.updated_at,
      created_at: created_at ?? this.created_at,
      id: id ?? this.id,
      front: front ?? this.front,
      left: left ?? this.left,
      right: right ?? this.right,
      upper: upper ?? this.upper,
      lower: lower ?? this.lower,
      media: media ?? this.media,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'user_id': user_id,
      'updated_at': updated_at,
      'created_at': created_at,
      'id': id,
      'front': front,
      'left': left,
      'right': right,
      'upper': upper,
      'lower': lower,
      'media': media?.map((x) => x.toMap()).toList(),
    };
  }

  factory ExpertisesModel.fromJson(Map<String, dynamic> map) {
    return ExpertisesModel(
      user_id: map['user_id'] != null ? map['user_id'] as int : null,
      updated_at:
          map['updated_at'] != null ? map['updated_at'] as String : null,
      created_at:
          map['created_at'] != null ? map['created_at'] as String : null,
      id: map['id'] != null ? map['id'] as int : null,
      front: map['front'] != null ? map['front'] as String : null,
      left: map['left'] != null ? map['left'] as String : null,
      right: map['right'] != null ? map['right'] as String : null,
      upper: map['upper'] != null ? map['upper'] as String : null,
      lower: map['lower'] != null ? map['lower'] as String : null,
      media: map['media'] != null
          ? List<MediaModel>.from(
              (map['media']).map<MediaModel?>(
                (x) => MediaModel.fromJson(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  // factory ExpertisesModel.fromJson(String source) => ExpertisesModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ExpertisesModel(user_id: $user_id, updated_at: $updated_at, created_at: $created_at, id: $id, front: $front, left: $left, right: $right, upper: $upper, lower: $lower, media: $media)';
  }

  @override
  bool operator ==(covariant ExpertisesModel other) {
    if (identical(this, other)) return true;

    return other.user_id == user_id &&
        other.updated_at == updated_at &&
        other.created_at == created_at &&
        other.id == id &&
        other.front == front &&
        other.left == left &&
        other.right == right &&
        other.upper == upper &&
        other.lower == lower &&
        listEquals(other.media, media);
  }

  @override
  int get hashCode {
    return user_id.hashCode ^
        updated_at.hashCode ^
        created_at.hashCode ^
        id.hashCode ^
        front.hashCode ^
        left.hashCode ^
        right.hashCode ^
        upper.hashCode ^
        lower.hashCode ^
        media.hashCode;
  }
}
