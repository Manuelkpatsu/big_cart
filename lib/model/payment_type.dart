import 'package:equatable/equatable.dart';

class PaymentType extends Equatable {
  final int id;
  final String name;
  final String imagePath;

  const PaymentType({required this.id, required this.name, required this.imagePath});

  @override
  List<Object?> get props => [id, name, imagePath];
}
