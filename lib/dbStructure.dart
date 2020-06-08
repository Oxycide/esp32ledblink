class Status {
  List<LedState> ledState;

  Status({this.ledState});

  Status.fromJson(Map<String, dynamic> json) {
    if (json['LedState'] != null) {
      ledState = new List<LedState>();
      json['LedState'].forEach((v) {
        ledState.add(new LedState.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ledState != null) {
      data['LedState'] = this.ledState.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LedState {
  String sId;
  String ledState;
  int iV;

  LedState({this.sId, this.ledState, this.iV});

  LedState.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    ledState = json['LedState'];
    iV = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['LedState'] = this.ledState;
    data['__v'] = this.iV;
    return data;
  }
}