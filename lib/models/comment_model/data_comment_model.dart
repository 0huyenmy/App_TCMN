// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:journal_linker/models/login_model/login_model.dart';

class DataCommentModel {
  final int? id;
  final String? title;
  final String? body;
  final String? parent_id;
  final int? views;
  final int? user_id;
  final String? created_at;
  final String? updated_at;
  final int? favorites_count;
  final int? comments_count;
  final bool? is_favorite;
  final int? question_id;
  final LoginModel? user;
  DataCommentModel({
    this.id,
    this.title,
    this.body,
    this.parent_id,
    this.views,
    this.user_id,
    this.created_at,
    this.updated_at,
    this.favorites_count,
    this.comments_count,
    this.is_favorite,
    this.question_id,
    this.user,
  });

  DataCommentModel copyWith({
    int? id,
    String? title,
    String? body,
    String? parent_id,
    int? views,
    int? user_id,
    String? created_at,
    String? updated_at,
    int? favorites_count,
    int? comments_count,
    bool? is_favorite,
    int? question_id,
    LoginModel? user,
  }) {
    return DataCommentModel(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      parent_id: parent_id ?? this.parent_id,
      views: views ?? this.views,
      user_id: user_id ?? this.user_id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      favorites_count: favorites_count ?? this.favorites_count,
      comments_count: comments_count ?? this.comments_count,
      is_favorite: is_favorite ?? this.is_favorite,
      question_id: question_id ?? this.question_id,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'body': body,
      'parent_id': parent_id,
      'views': views,
      'user_id': user_id,
      'created_at': created_at,
      'updated_at': updated_at,
      'favorites_count': favorites_count,
      'comments_count': comments_count,
      'is_favorite': is_favorite,
      'question_id': question_id,
      'user': user?.toMap(),
    };
  }

  factory DataCommentModel.fromJson(Map<String, dynamic> map) {
    return DataCommentModel(
      id: map['id'] != null ? map['id'] as int : null,
      title: map['title'] != null ? map['title'] as String : null,
      body: map['body'] != null ? map['body'] as String : null,
      parent_id: map['parent_id'] != null ? map['parent_id'] as String : null,
      views: map['views'] != null ? map['views'] as int : null,
      user_id: map['user_id'] != null ? map['user_id'] as int : null,
      created_at:
          map['created_at'] != null ? map['created_at'] as String : null,
      updated_at:
          map['updated_at'] != null ? map['updated_at'] as String : null,
      favorites_count:
          map['favorites_count'] != null ? map['favorites_count'] as int : null,
      comments_count:
          map['comments_count'] != null ? map['comments_count'] as int : null,
      is_favorite:
          map['is_favorite'] != null ? map['is_favorite'] as bool : null,
      question_id:
          map['question_id'] != null ? map['question_id'] as int : null,
      user: map['user'] != null
          ? LoginModel.fromJson(map['user'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  // factory DataCommentModel.fromJson(String source) => DataCommentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DataCommentModel(id: $id, title: $title, body: $body, parent_id: $parent_id, views: $views, user_id: $user_id, created_at: $created_at, updated_at: $updated_at, favorites_count: $favorites_count, comments_count: $comments_count, is_favorite: $is_favorite, question_id: $question_id, user: $user)';
  }

  @override
  bool operator ==(covariant DataCommentModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.body == body &&
        other.parent_id == parent_id &&
        other.views == views &&
        other.user_id == user_id &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.favorites_count == favorites_count &&
        other.comments_count == comments_count &&
        other.is_favorite == is_favorite &&
        other.question_id == question_id &&
        other.user == user;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        body.hashCode ^
        parent_id.hashCode ^
        views.hashCode ^
        user_id.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        favorites_count.hashCode ^
        comments_count.hashCode ^
        is_favorite.hashCode ^
        question_id.hashCode ^
        user.hashCode;
  }
}
