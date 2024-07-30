import 'package:equatable/equatable.dart';

class Address extends Equatable {
  final int id;
  final String name;
  final String streetAddress;
  final String city;
  final String zipCode;
  final String phoneNumber;
  final String country;

  const Address({
    required this.id,
    required this.name,
    required this.streetAddress,
    required this.city,
    required this.zipCode,
    required this.phoneNumber,
    required this.country,
  });

  String completeAddress() {
    return "$streetAddress, $city, $country, $zipCode";
  }

  @override
  List<Object?> get props => [id, name, streetAddress, city, zipCode, phoneNumber, country];
}
