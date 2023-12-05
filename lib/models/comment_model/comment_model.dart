// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:journal_linker/models/comment_model/data_comment_model.dart';

class CommentModel {
  final int? current_page;
  final List<DataCommentModel>? data;
  final String? first_page_url;
  final int? from;
  final int? last_page;
  final String? last_page_url;
  final String? path;
  final int? per_page;
  final int? to;
  final int? total;
  CommentModel({
    this.current_page,
    this.data,
    this.first_page_url,
    this.from,
    this.last_page,
    this.last_page_url,
    this.path,
    this.per_page,
    this.to,
    this.total,
  });

  CommentModel copyWith({
    int? current_page,
    List<DataCommentModel>? data,
    String? first_page_url,
    int? from,
    int? last_page,
    String? last_page_url,
    String? path,
    int? per_page,
    int? to,
    int? total,
  }) {
    return CommentModel(
      current_page: current_page ?? this.current_page,
      data: data ?? this.data,
      first_page_url: first_page_url ?? this.first_page_url,
      from: from ?? this.from,
      last_page: last_page ?? this.last_page,
      last_page_url: last_page_url ?? this.last_page_url,
      path: path ?? this.path,
      per_page: per_page ?? this.per_page,
      to: to ?? this.to,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'current_page': current_page,
      'data': data?.map((x) => x.toMap()).toList(),
      'first_page_url': first_page_url,
      'from': from,
      'last_page': last_page,
      'last_page_url': last_page_url,
      'path': path,
      'per_page': per_page,
      'to': to,
      'total': total,
    };
  }

  factory CommentModel.fromJson(Map<String, dynamic> map) {
    return CommentModel(
      current_page:
          map['current_page'] != null ? map['current_page'] as int : null,
      data: map['data'] != null
          ? List<DataCommentModel>.from(
              (map['data']).map<DataCommentModel?>(
                (x) => DataCommentModel.fromJson(x as Map<String, dynamic>),
              ),
            )
          : null,
      first_page_url: map['first_page_url'] != null
          ? map['first_page_url'] as String
          : null,
      from: map['from'] != null ? map['from'] as int : null,
      last_page: map['last_page'] != null ? map['last_page'] as int : null,
      last_page_url:
          map['last_page_url'] != null ? map['last_page_url'] as String : null,
      path: map['path'] != null ? map['path'] as String : null,
      per_page: map['per_page'] != null ? map['per_page'] as int : null,
      to: map['to'] != null ? map['to'] as int : null,
      total: map['total'] != null ? map['total'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  // factory CommentModel.fromJson(String source) =>
  //     CommentModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CommentModel(current_page: $current_page, data: $data, first_page_url: $first_page_url, from: $from, last_page: $last_page, last_page_url: $last_page_url, path: $path, per_page: $per_page, to: $to, total: $total)';
  }

  @override
  bool operator ==(covariant CommentModel other) {
    if (identical(this, other)) return true;

    return other.current_page == current_page &&
        listEquals(other.data, data) &&
        other.first_page_url == first_page_url &&
        other.from == from &&
        other.last_page == last_page &&
        other.last_page_url == last_page_url &&
        other.path == path &&
        other.per_page == per_page &&
        other.to == to &&
        other.total == total;
  }

  @override
  int get hashCode {
    return current_page.hashCode ^
        data.hashCode ^
        first_page_url.hashCode ^
        from.hashCode ^
        last_page.hashCode ^
        last_page_url.hashCode ^
        path.hashCode ^
        per_page.hashCode ^
        to.hashCode ^
        total.hashCode;
  }
}
