class AtomLink {
  String href;

  AtomLink({this.href});

  AtomLink.fromJson(Map<String, dynamic> json) {
    href = json['-href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['-href'] = this.href;
    return data;
  }
}
