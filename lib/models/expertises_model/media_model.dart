// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class MediaModel {
  final int? id;
  final String? model_type;
  final int? model_id;
  final String? uuid;
  final String? collection_name;
  final String? name;
  final String? file_name;
  final String? mime_type;
  final String? disk;
  final String? conversions_disk;
  final int? size;
  final int? order_column;
  final String? created_at;
  final String? updated_at;
  final String? original_url;
  final String? preview_url;
  MediaModel({
    this.id,
    this.model_type,
    this.model_id,
    this.uuid,
    this.collection_name,
    this.name,
    this.file_name,
    this.mime_type,
    this.disk,
    this.conversions_disk,
    this.size,
    this.order_column,
    this.created_at,
    this.updated_at,
    this.original_url,
    this.preview_url,
  });

  MediaModel copyWith({
    int? id,
    String? model_type,
    int? model_id,
    String? uuid,
    String? collection_name,
    String? name,
    String? file_name,
    String? mime_type,
    String? disk,
    String? conversions_disk,
    int? size,
    int? order_column,
    String? created_at,
    String? updated_at,
    String? original_url,
    String? preview_url,
  }) {
    return MediaModel(
      id: id ?? this.id,
      model_type: model_type ?? this.model_type,
      model_id: model_id ?? this.model_id,
      uuid: uuid ?? this.uuid,
      collection_name: collection_name ?? this.collection_name,
      name: name ?? this.name,
      file_name: file_name ?? this.file_name,
      mime_type: mime_type ?? this.mime_type,
      disk: disk ?? this.disk,
      conversions_disk: conversions_disk ?? this.conversions_disk,
      size: size ?? this.size,
      order_column: order_column ?? this.order_column,
      created_at: created_at ?? this.created_at,
      updated_at: updated_at ?? this.updated_at,
      original_url: original_url ?? this.original_url,
      preview_url: preview_url ?? this.preview_url,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'model_type': model_type,
      'model_id': model_id,
      'uuid': uuid,
      'collection_name': collection_name,
      'name': name,
      'file_name': file_name,
      'mime_type': mime_type,
      'disk': disk,
      'conversions_disk': conversions_disk,
      'size': size,
      'order_column': order_column,
      'created_at': created_at,
      'updated_at': updated_at,
      'original_url': original_url,
      'preview_url': preview_url,
    };
  }

  factory MediaModel.fromJson(Map<String, dynamic> map) {
    return MediaModel(
      id: map['id'] != null ? map['id'] as int : null,
      model_type:
          map['model_type'] != null ? map['model_type'] as String : null,
      model_id: map['model_id'] != null ? map['model_id'] as int : null,
      uuid: map['uuid'] != null ? map['uuid'] as String : null,
      collection_name: map['collection_name'] != null
          ? map['collection_name'] as String
          : null,
      name: map['name'] != null ? map['name'] as String : null,
      file_name: map['file_name'] != null ? map['file_name'] as String : null,
      mime_type: map['mime_type'] != null ? map['mime_type'] as String : null,
      disk: map['disk'] != null ? map['disk'] as String : null,
      conversions_disk: map['conversions_disk'] != null
          ? map['conversions_disk'] as String
          : null,
      size: map['size'] != null ? map['size'] as int : null,
      order_column:
          map['order_column'] != null ? map['order_column'] as int : null,
      created_at:
          map['created_at'] != null ? map['created_at'] as String : null,
      updated_at:
          map['updated_at'] != null ? map['updated_at'] as String : null,
      original_url:
          map['original_url'] != null ? map['original_url'] as String : null,
      preview_url:
          map['preview_url'] != null ? map['preview_url'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  // factory MediaModel.fromJson(String source) => MediaModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'MediaModel(id: $id, model_type: $model_type, model_id: $model_id, uuid: $uuid, collection_name: $collection_name, name: $name, file_name: $file_name, mime_type: $mime_type, disk: $disk, conversions_disk: $conversions_disk, size: $size, order_column: $order_column, created_at: $created_at, updated_at: $updated_at, original_url: $original_url, preview_url: $preview_url)';
  }

  @override
  bool operator ==(covariant MediaModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.model_type == model_type &&
        other.model_id == model_id &&
        other.uuid == uuid &&
        other.collection_name == collection_name &&
        other.name == name &&
        other.file_name == file_name &&
        other.mime_type == mime_type &&
        other.disk == disk &&
        other.conversions_disk == conversions_disk &&
        other.size == size &&
        other.order_column == order_column &&
        other.created_at == created_at &&
        other.updated_at == updated_at &&
        other.original_url == original_url &&
        other.preview_url == preview_url;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        model_type.hashCode ^
        model_id.hashCode ^
        uuid.hashCode ^
        collection_name.hashCode ^
        name.hashCode ^
        file_name.hashCode ^
        mime_type.hashCode ^
        disk.hashCode ^
        conversions_disk.hashCode ^
        size.hashCode ^
        order_column.hashCode ^
        created_at.hashCode ^
        updated_at.hashCode ^
        original_url.hashCode ^
        preview_url.hashCode;
  }
}
