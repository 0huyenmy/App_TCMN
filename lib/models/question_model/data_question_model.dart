// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:journal_linker/models/login_model/login_model.dart';

class DataQuestionModel {
  final int? id;
  final String? title;
  final String? body;
  final int? views;
  final int? user_id;
  final String? created_at;
  final String? updated_at;
  final int? favorites_count;
  final int? comments_count;
  final bool? is_favorite;
  final String? image;
  final LoginModel? user;
  DataQuestionModel({
    this.id,
    this.title,
    this.body,
    this.views,
    this.user_id,
    this.created_at,
    this.updated_at,
    this.favorites_count,
    this.comments_count,
    this.is_favorite,
    this.image,
    this.user,
  });

  DataQuestionModel copyWith({
    int? id,
    String? title,
    String? body,
    int? views,
    int? user_id,
    String? created_at,
    String? updated_at,
    int? favorites_count,
    int? comments_count,
    bool? is_favorite,
    String? image,
    LoginModel? user,
  }) {
    return DataQuestionModel(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      views: views ?? this.views,
      user_id: user_id ?? this.user_id,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      favorites_count: favorites_count ?? this.favorites_count,
      comments_count: comments_count ?? this.comments_count,
      is_favorite: is_favorite ?? this.is_favorite,
      image: image ?? this.image,
      user: user ?? this.user,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'body': body,
      'views': views,
      'user_id': user_id,
      'created_at': created_at,
      'updated_at': updated_at,
      'favorites_count': favorites_count,
      'comments_count': comments_count,
      'is_favorite': is_favorite,
      'image': image,
      'user': user?.toMap(),
    };
  }

  factory DataQuestionModel.fromJson(Map<String, dynamic> map) {
    return DataQuestionModel(
      id: map['id'] != null ? map['id'] as int : null,
      title: map['title'] != null ? map['title'] as String : null,
      body: map['body'] != null ? map['body'] as String : null,
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
      image: map['image'] != null ? map['image'] as String : null,
      user: map['user'] != null
          ? LoginModel.fromJson(map['user'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  // factory DataQuestionModel.fromJson(String source) => DataQuestionModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'DataQuestionModel(id: $id, title: $title, body: $body, views: $views, user_id: $user_id, created_at: $created_at, updated_at: $updated_at, favorites_count: $favorites_count, comments_count: $comments_count, is_favorite: $is_favorite, image: $image, user: $user)';
  }

  @override
  bool operator ==(covariant DataQuestionModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.title == title &&
        other.body == body &&
        other.views == views &&
        other.user_id == user_id &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.favorites_count == favorites_count &&
        other.comments_count == comments_count &&
        other.is_favorite == is_favorite &&
        other.image == image &&
        other.user == user;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        title.hashCode ^
        body.hashCode ^
        views.hashCode ^
        user_id.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        favorites_count.hashCode ^
        comments_count.hashCode ^
        is_favorite.hashCode ^
        image.hashCode ^
        user.hashCode;
  }
}
