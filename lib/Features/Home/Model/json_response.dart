class JsonModel {
  String? title;
  String? subtitle;
  String? image;

  JsonModel({this.title, this.subtitle, this.image});

  JsonModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['image'] = this.image;
    return data;
  }
}
