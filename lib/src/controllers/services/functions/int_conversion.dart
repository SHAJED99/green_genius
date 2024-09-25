extension IntExtension on int {
  List<int> customRange({int startingValue = 0}) {
    List<int> res = [];
    for (int i = startingValue; i < this; i++) {
      res.add(i);
    }
    return res;
  }

  String getAlphabetForIndex() {
    if (this > 26) return "#";

    return String.fromCharCode(65 + this);
  }
}
