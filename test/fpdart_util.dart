import 'package:fpdart/fpdart.dart';
import 'package:test/test.dart';

Matcher isLeftThat(Matcher matcher) {
  return _IsLeftThat(matcher);
}

Matcher isRightThat(Matcher matcher) {
  return _IsRightThat(matcher);
}

class _IsLeftThat extends Matcher {
  _IsLeftThat(this._matcher);

  final Matcher _matcher;

  @override
  bool matches(Object? item, Map<dynamic, dynamic> matchState) {
    if (item is Either) {
      return item.isLeft() &&
          _matcher.matches(item.getLeft().toNullable(), matchState);
    }
    return false;
  }

  @override
  Description describe(Description description) =>
      description.add('is Left that ').addDescriptionOf(_matcher);
}

class _IsRightThat extends Matcher {
  _IsRightThat(this._matcher);

  final Matcher _matcher;

  @override
  bool matches(Object? item, Map<dynamic, dynamic> matchState) {
    if (item is Either) {
      return item.isRight() &&
          _matcher.matches(item.getRight().toNullable(), matchState);
    }
    return false;
  }

  @override
  Description describe(Description description) =>
      description.add('is Right that ').addDescriptionOf(_matcher);
}
