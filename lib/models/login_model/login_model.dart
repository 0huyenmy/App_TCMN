// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:journal_linker/models/login_model/role_login_model.dart';

class LoginModel {
  final int? id;
  final String? first_name;
  final String? last_name;
  final String? email;
  final String? contact;
  final String? dob;
  final String? gender;
  final bool? status;
  final String? language;
  final String? email_verified_at;
  final int? type;
  final String? updated_at;
  final String? created_at;
  final bool? email_notification;
  final String? full_name;
  final String? profile_image;
  final String? role_name;
  final String? role_display_name;
  final String? token;
  final List<RoleLoginModel>? roles;
  LoginModel({
    this.id,
    this.first_name,
    this.last_name,
    this.email,
    this.contact,
    this.dob,
    this.gender,
    this.status,
    this.language,
    this.email_verified_at,
    this.type,
    this.updated_at,
    this.created_at,
    this.email_notification,
    this.full_name,
    this.profile_image,
    this.role_name,
    this.role_display_name,
    this.token,
    this.roles,
  });

  LoginModel copyWith({
    int? id,
    String? first_name,
    String? last_name,
    String? email,
    String? contact,
    String? dob,
    String? gender,
    bool? status,
    String? language,
    String? email_verified_at,
    int? type,
    String? updated_at,
    String? created_at,
    bool? email_notification,
    String? full_name,
    String? profile_image,
    String? role_name,
    String? role_display_name,
    String? token,
    List<RoleLoginModel>? roles,
  }) {
    return LoginModel(
      id: id ?? this.id,
      first_name: first_name ?? this.first_name,
      last_name: last_name ?? this.last_name,
      email: email ?? this.email,
      contact: contact ?? this.contact,
      dob: dob ?? this.dob,
      gender: gender ?? this.gender,
      status: status ?? this.status,
      language: language ?? this.language,
      email_verified_at: email_verified_at ?? this.email_verified_at,
      type: type ?? this.type,
      updated_at: updated_at ?? this.updated_at,
      created_at: created_at ?? this.created_at,
      email_notification: email_notification ?? this.email_notification,
      full_name: full_name ?? this.full_name,
      profile_image: profile_image ?? this.profile_image,
      role_name: role_name ?? this.role_name,
      role_display_name: role_display_name ?? this.role_display_name,
      token: token ?? this.token,
      roles: roles ?? this.roles,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'first_name': first_name,
      'last_name': last_name,
      'email': email,
      'contact': contact,
      'dob': dob,
      'gender': gender,
      'status': status,
      'language': language,
      'email_verified_at': email_verified_at,
      'type': type,
      'updated_at': updated_at,
      'created_at': created_at,
      'email_notification': email_notification,
      'full_name': full_name,
      'profile_image': profile_image,
      'role_name': role_name,
      'role_display_name': role_display_name,
      'token': token,
      'roles': roles?.map((x) => x.toMap()).toList(),
    };
  }

  factory LoginModel.fromJson(Map<String, dynamic> map) {
    return LoginModel(
      id: map['id'] != null ? map['id'] as int : null,
      first_name:
          map['first_name'] != null ? map['first_name'] as String : null,
      last_name: map['last_name'] != null ? map['last_name'] as String : null,
      email: map['email'] != null ? map['email'] as String : null,
      contact: map['contact'] != null ? map['contact'] as String : null,
      dob: map['dob'] != null ? map['dob'] as String : null,
      gender: map['gender'] != null ? map['gender'] as String : null,
      status: map['status'] != null ? map['status'] as bool : null,
      language: map['language'] != null ? map['language'] as String : null,
      email_verified_at: map['email_verified_at'] != null
          ? map['email_verified_at'] as String
          : null,
      type: map['type'] != null ? map['type'] as int : null,
      updated_at:
          map['updated_at'] != null ? map['updated_at'] as String : null,
      created_at:
          map['created_at'] != null ? map['created_at'] as String : null,
      email_notification: map['email_notification'] != null
          ? map['email_notification'] as bool
          : null,
      full_name: map['full_name'] != null ? map['full_name'] as String : null,
      profile_image:
          map['profile_image'] != null ? map['profile_image'] as String : null,
      role_name: map['role_name'] != null ? map['role_name'] as String : null,
      role_display_name: map['role_display_name'] != null
          ? map['role_display_name'] as String
          : null,
      token: map['token'] != null ? map['token'] as String : null,
      roles: map['roles'] != null
          ? List<RoleLoginModel>.from(
              (map['roles']).map<RoleLoginModel?>(
                (x) => RoleLoginModel.fromJson(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  // factory LoginModel.fromJson(String source) => LoginModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'LoginModel(id: $id, first_name: $first_name, last_name: $last_name, email: $email, contact: $contact, dob: $dob, gender: $gender, status: $status, language: $language, email_verified_at: $email_verified_at, type: $type, updated_at: $updated_at, created_at: $created_at, email_notification: $email_notification, full_name: $full_name, profile_image: $profile_image, role_name: $role_name, role_display_name: $role_display_name, token: $token, roles: $roles)';
  }

  @override
  bool operator ==(covariant LoginModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.first_name == first_name &&
        other.last_name == last_name &&
        other.email == email &&
        other.contact == contact &&
        other.dob == dob &&
        other.gender == gender &&
        other.status == status &&
        other.language == language &&
        other.email_verified_at == email_verified_at &&
        other.type == type &&
        other.updated_at == updated_at &&
        other.created_at == created_at &&
        other.email_notification == email_notification &&
        other.full_name == full_name &&
        other.profile_image == profile_image &&
        other.role_name == role_name &&
        other.role_display_name == role_display_name &&
        other.token == token &&
        listEquals(other.roles, roles);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        first_name.hashCode ^
        last_name.hashCode ^
        email.hashCode ^
        contact.hashCode ^
        dob.hashCode ^
        gender.hashCode ^
        status.hashCode ^
        language.hashCode ^
        email_verified_at.hashCode ^
        type.hashCode ^
        updated_at.hashCode ^
        created_at.hashCode ^
        email_notification.hashCode ^
        full_name.hashCode ^
        profile_image.hashCode ^
        role_name.hashCode ^
        role_display_name.hashCode ^
        token.hashCode ^
        roles.hashCode;
  }
}
