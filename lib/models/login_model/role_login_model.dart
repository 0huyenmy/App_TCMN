// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:journal_linker/models/login_model/pivot_model.dart';

class RoleLoginModel {
  final int? id;
  final String? name;
  final String? display_name;
  final int? is_default;
  final String? guard_name;
  final String? created_at;
  final String? updated_at;
  final PivotModel? pivot;
  RoleLoginModel({
    this.id,
    this.name,
    this.display_name,
    this.is_default,
    this.guard_name,
    this.created_at,
    this.updated_at,
    this.pivot,
  });

  RoleLoginModel copyWith({
    int? id,
    String? name,
    String? display_name,
    int? is_default,
    String? guard_name,
    String? created_at,
    String? updated_at,
    PivotModel? pivot,
  }) {
    return RoleLoginModel(
      id: id ?? this.id,
      name: name ?? this.name,
      display_name: display_name ?? this.display_name,
      is_default: is_default ?? this.is_default,
      guard_name: guard_name ?? this.guard_name,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      pivot: pivot ?? this.pivot,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'display_name': display_name,
      'is_default': is_default,
      'guard_name': guard_name,
      'created_at': created_at,
      'updated_at': updated_at,
      'pivot': pivot?.toMap(),
    };
  }

  factory RoleLoginModel.fromJson(Map<String, dynamic> map) {
    return RoleLoginModel(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      display_name:
          map['display_name'] != null ? map['display_name'] as String : null,
      is_default: map['is_default'] != null ? map['is_default'] as int : null,
      guard_name:
          map['guard_name'] != null ? map['guard_name'] as String : null,
      created_at:
          map['created_at'] != null ? map['created_at'] as String : null,
      updated_at:
          map['updated_at'] != null ? map['updated_at'] as String : null,
      pivot: map['pivot'] != null
          ? PivotModel.fromJson(map['pivot'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  // factory RoleLoginModel.fromJson(String source) => RoleLoginModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RoleLoginModel(id: $id, name: $name, display_name: $display_name, is_default: $is_default, guard_name: $guard_name, created_at: $created_at, updated_at: $updated_at, pivot: $pivot)';
  }

  @override
  bool operator ==(covariant RoleLoginModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.name == name &&
        other.display_name == display_name &&
        other.is_default == is_default &&
        other.guard_name == guard_name &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.pivot == pivot;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        display_name.hashCode ^
        is_default.hashCode ^
        guard_name.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        pivot.hashCode;
  }
}
