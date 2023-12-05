// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PivotModel {
  final int? model_id;
  final int? role_id;
  final String? model_type;
  PivotModel({
    this.model_id,
    this.role_id,
    this.model_type,
  });

  PivotModel copyWith({
    int? model_id,
    int? role_id,
    String? model_type,
  }) {
    return PivotModel(
      model_id: model_id ?? this.model_id,
      role_id: role_id ?? this.role_id,
      model_type: model_type ?? this.model_type,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'model_id': model_id,
      'role_id': role_id,
      'model_type': model_type,
    };
  }

  factory PivotModel.fromJson(Map<String, dynamic> map) {
    return PivotModel(
      model_id: map['model_id'] != null ? map['model_id'] as int : null,
      role_id: map['role_id'] != null ? map['role_id'] as int : null,
      model_type:
          map['model_type'] != null ? map['model_type'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  // factory PivotModel.fromJson(String source) => PivotModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'PivotModel(model_id: $model_id, role_id: $role_id, model_type: $model_type)';

  @override
  bool operator ==(covariant PivotModel other) {
    if (identical(this, other)) return true;

    return other.model_id == model_id &&
        other.role_id == role_id &&
        other.model_type == model_type;
  }

  @override
  int get hashCode =>
      model_id.hashCode ^ role_id.hashCode ^ model_type.hashCode;
}
