// The BoolInt enum has been changed to type bool
@deprecated
enum BoolInt { FALSE, TRUE }

// ignore_for_file: deprecated_member_use_from_same_package
extension BooIntExetesion on BoolInt {
  int get value {
    if (this == BoolInt.FALSE) return 0;
    if (this == BoolInt.TRUE) return 1;
    return null;
  }

  BoolInt fromString(String value) {
    if (value == BoolInt.FALSE.value.toString()) return BoolInt.FALSE;
    if (value == BoolInt.TRUE.value.toString()) return BoolInt.TRUE;
    return null;
  }
}
