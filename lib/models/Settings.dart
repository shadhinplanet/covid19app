class Settings {
  int id;
  String name;
  String email;
  String userid;

  Settings(
      {this.id,
      this.name,
      this.email,
      this.userid});

  Settings.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    userid = json['userid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['userid'] = this.userid;
    return data;
  }
}