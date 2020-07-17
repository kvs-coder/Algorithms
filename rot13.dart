String rot13(String s) {
    final int step = 13;
    final int total = 'abcdefghijklmnopqrstuvwxyz'.length;
    final int A = 'A'.codeUnitAt(0);
    final int a = 'a'.codeUnitAt(0);
    final int Z = A + total;
    final int z = a + total;
    List<int> rotated = List();
    s.codeUnits.forEach((charCode) {
      if (charCode < A || charCode > z || charCode > Z && charCode < a) {
        rotated.add(charCode);
      } else {
        if ([A, a].any((item) {
          return item <= charCode && charCode < item + step;
        })) {
          rotated.add(charCode + step);
        } else {
          rotated.add(charCode - step);
        }
      }
    });
    return (String.fromCharCodes(rotated));
  }