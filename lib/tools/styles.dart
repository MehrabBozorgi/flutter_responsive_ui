import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

getDescWhite(BuildContext context) {
  return TextStyle(
    fontSize: ResponsiveValue(
      context,
      valueWhen: [
        const Condition.equals(name: MOBILE, value: 10.0),
        const Condition.equals(name: TABLET, value: 12.0),
        const Condition.equals(name: DESKTOP, value: 14.0),
        const Condition.largerThan(name: DESKTOP, value: 16.0),
      ],
      defaultValue: 10.0,
    ).value,
    color: Colors.white,
  );
}

getDescBlack(BuildContext context) {
  return TextStyle(
    fontSize: ResponsiveValue(
      context,
      valueWhen: [
        const Condition.equals(name: MOBILE, value: 10.0),
        const Condition.equals(name: TABLET, value: 12.0),
        const Condition.equals(name: DESKTOP, value: 14.0),
        const Condition.largerThan(name: DESKTOP, value: 16.0),
      ],
      defaultValue: 10.0,
    ).value,
    color: Colors.black,
  );
}

getDescGrey(BuildContext context) {
  return TextStyle(
    fontSize: ResponsiveValue(
      context,
      valueWhen: [
        const Condition.equals(name: MOBILE, value: 10.0),
        const Condition.equals(name: TABLET, value: 12.0),
        const Condition.equals(name: DESKTOP, value: 14.0),
        const Condition.largerThan(name: DESKTOP, value: 16.0),
      ],
      defaultValue: 10.0,
    ).value,
    color: Colors.grey,
  );
}

getBodyBlack(BuildContext context) {
  return TextStyle(
    fontSize: ResponsiveValue(
      context,
      valueWhen: [
        const Condition.equals(name: MOBILE, value: 12.0),
        const Condition.equals(name: TABLET, value: 14.0),
        const Condition.equals(name: DESKTOP, value: 16.0),
        const Condition.largerThan(name: DESKTOP, value: 18.0),
      ],
      defaultValue: 12.0,
    ).value,
    color: Colors.black,
  );
}

getBodyWhite(BuildContext context) {
  return TextStyle(
    fontSize: ResponsiveValue(
      context,
      valueWhen: [
        const Condition.equals(name: MOBILE, value: 12.0),
        const Condition.equals(name: TABLET, value: 14.0),
        const Condition.equals(name: DESKTOP, value: 16.0),
        const Condition.largerThan(name: DESKTOP, value: 18.0),
      ],
      defaultValue: 12.0,
    ).value,
    color: Colors.white,
  );
}
