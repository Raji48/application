

class User {
  List<Value> value;

  User({this.value});

  User.fromJson(Map<String, dynamic> json) {
    if (json['Value'] != null) {
      value = new List<Value>();
      json['Value'].forEach((v) {
        value.add(new Value.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.value != null) {
      data['Value'] = this.value.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Value {
  String name;
  String image;
  String viewimage;

  Value({this.name, this.image, this.viewimage});

  Value.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    viewimage = json['viewimage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['viewimage'] = this.viewimage;
    return data;
  }
}















