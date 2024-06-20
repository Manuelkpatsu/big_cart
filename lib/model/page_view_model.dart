import 'package:equatable/equatable.dart';

class PageViewModel extends Equatable {
  final String image;
  final String title;
  final String body;
  final String? logo;

  const PageViewModel({required this.image, required this.title, required this.body, this.logo});

  @override
  List<Object?> get props => [image, title, body, logo];
}
