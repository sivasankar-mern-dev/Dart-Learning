void main() {
  var rbi = new RBI();
  var kotak = new Kotak();
  var canara = new Canara();

  print("${rbi.name} their interest ${rbi.interest()}");
  print("${kotak.name} their interest ${kotak.interest()}");
  print("${canara.name} their interest ${canara.interest()}");
}

class RBI {
  var name = "RBI";
  int? interest() {
    return 5;
  }
}

class Kotak extends RBI {
  var name = "Kotak";
}

class Canara extends RBI {
  var name = "Canara";
  int? interest() {
    return 7;
  }
}