class User {
  int? id;
  String? userId;
  String? email;
  String? password;
  int? roleId;
  int? status;
  String? name;
  String? phone;
  String? address;
  String? nip;

  User({
    this.id,
    this.userId,
    this.email,
    this.password,
    this.roleId,
    this.status,
    this.name,
    this.phone,
    this.address,
    this.nip,
  });

  User.fromJson(Map<String, dynamic> json) {
    userId = json['id'];
    email = json['email'];
    password = json['password'];
    roleId = json['role_id'];
    status = json['status'];
    name = json['name'];
    phone = json['phone'];
    address = json['address'];
    nip = json['nip'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = userId;
    data['email'] = email;
    data['password'] = password;
    data['role_id'] = roleId;
    data['status'] = status;
    data['name'] = name;
    data['phone'] = phone;
    data['address'] = address;
    data['nip'] = nip;
    return data;
  }

  User.fromMap(Map<String, dynamic> map) {
    id = map['id'];
    userId = map['user_id'];
    email = map['email'];
    password = map['password'];
    roleId = map['role_id'];
    status = map['status'];
    name = map['name'];
    phone = map['phone'];
    address = map['address'];
    nip = map['nip'];
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['email'] = email;
    map['password'] = password;
    map['role_id'] = roleId;
    map['status'] = status;
    map['name'] = name;
    map['phone'] = phone;
    map['address'] = address;
    map['nip'] = nip;
    return map;
  }
}
