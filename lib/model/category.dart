import 'dart:ui';

import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final int id;
  final String name;
  final String imagePath;
  final Color color;

  const Category({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.color,
  });

  @override
  List<Object?> get props => [id, name, imagePath, color];
}
