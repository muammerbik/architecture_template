// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'user_model.g.dart';

@JsonSerializable()
class User extends INetworkModel<User>with EquatableMixin {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  const User({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  @override
  List<Object?> get props => [userId, id, title, body];

  // JSON'dan nesne oluşturur
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  // Nesneyi JSON'a çevirir
  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) {
    return User(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }
  
  @override
  User fromJson(Map<String, dynamic> json) =>_$UserFromJson(json);
}
