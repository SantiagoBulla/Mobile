import 'package:callapi/model/user_location.dart';
import 'package:callapi/model/user_name.dart';
import 'package:callapi/model/user_dob.dart';
import 'package:callapi/model/user_picture.dart';

class User {
  final String gender;
  final String email;
  final String phone;
  final String cell;
  final String nat;
  final UserName name;
  final UserDob dob;
  final UserLocation location;
  final UserPicture picture;

  User({
    required this.gender,
    required this.email,
    required this.phone,
    required this.cell,
    required this.nat,
    required this.name,
    required this.dob,
    required this.location,
    required this.picture,
  });

  factory User.fromMap(Map<String, dynamic> e) {
    final name = UserName(
      title: e['name']['title'], // Asegúrate de que title no sea null
      first: e['name']['first'], // Asegúrate de que first no sea null
      last: e['name']['last'], // Asegúrate de que last no sea null
    );
    final date = e['dob']['date'];
    final dob = UserDob(date: DateTime.parse(date), age: e['dob']['age']);
    final timezone = LocationTimeZone(
        offset: e['location']['timezone']['offset'],
        description: e['location']['timezone']['description']);
    final street = LocationStreet(
        number: e['location']['street']['number'],
        name: e['location']['street']['name']);
    final coordinates = LocationCoordinates(
        latitude: e['location']['coordinates']['latitude'],
        longitude: e['location']['coordinates']['latitude']);
    final location = UserLocation(
        city: e['location']['city'],
        state: e['location']['state'],
        country: e['location']['country'],
        postcode: e['location']['postcode'].toString(),
        street: street,
        coordinates: coordinates,
        timezone: timezone);
    final picture = UserPicture.fromMap(e['picture']);

    return User(
        cell: e['cell'],
        email: e['email'],
        gender: e['gender'],
        phone: e['phone'],
        nat: e['nat'],
        name: name,
        dob: dob,
        location: location,
        picture: picture);
  }

  //methods
  String get fullName {
    return '${this.name.title} ${this.name.first} ${this.name.last} ';
  }
}
