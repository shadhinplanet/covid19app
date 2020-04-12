class Settings {
  String language;
  String breakingNews;
  String newDeath;

  Settings(
      {this.language,
      this.breakingNews,
      this.newDeath});

  Settings.fromJson(Map<String, dynamic> json) {
    language = json['language'];
    breakingNews = json['breakingNews'];
    newDeath = json['newDeath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['language'] = this.language;
    data['breakingNews'] = this.breakingNews;
    data['newDeath'] = this.newDeath;
    return data;
  }
}