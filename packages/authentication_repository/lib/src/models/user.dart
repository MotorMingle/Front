import 'package:equatable/equatable.dart';

/// {@template user}
/// User model
///
/// [User.empty] represents an unauthenticated user.
/// {@endtemplate}
class User extends Equatable {
  /// {@macro user}

  const User({
    required this.id,
    this.email,
    this.tag,
    this.firstName,
    this.lastName,
    this.birthDate,
    this.photo,
  });

  /// The current user's id.
  final String id;

  /// The current user's email address.
  final String? email;

  /// The current user's tag (display name).
  final String? tag;

  /// The current user's first name.
  final String? firstName;

  /// The current user's last name.
  final String? lastName;

  /// The current user's birth date.
  final DateTime? birthDate;

  /// Url for the current user's photo.
  final String? photo;

  /// Empty user which represents an unauthenticated user.
  static const empty = User(id: '');

  /// Convenience getter to determine whether the current user is empty.
  bool get isEmpty => this == User.empty;

  /// Convenience getter to determine whether the current user is not empty.
  bool get isNotEmpty => this != User.empty;

  @override
  List<Object?> get props =>
      [id, email, tag, firstName, lastName, birthDate, photo];
}
