// Création de la classe users

class Users {
  // Propriétés
  int id;
  String name;
  String username;
  String email;
  Adresse adresse;
  String phone;
  String website;
  Company company;
  

  // Constructeur ou init
  Users(int id, String name, String username, String email, Adresse adresse, String phone, String website, Company company) {
    this.id = id;
    this.name = name;
    this.username = username;
    this.email = email;
    this.adresse = adresse;
    this.phone = phone;
    this.website = website;
    this.company = company;
  }

}

//-----------------------------------------------------------
// Création de la classe Adresse
class  Adresse {
  // Propriétés
  String street;
  String suite;
  String city;
  String zipcode;
  Geo geolocalisation;

  // Constructeur ou init
  Adresse(this.street, this.suite, this.city, this.zipcode, this.geolocalisation);
 

}
// Création de la classe Geo
class Geo {
  // Propriétés
  double lat;
  double long;

  // Constructeur ou init
  Geo(this.lat, this.long);
}
//------------------------------------------------------------
// Création de la classe Company

class  Company {
  // Propriétés
  String name;
  String catchPhrase;
  String bs;

  // Constructeur ou init
  Company(this.name, this.catchPhrase, this.bs);
}

