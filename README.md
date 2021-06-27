# bs_flutter_alert

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_alert/main/screenshot/example.png "Screenshot Example Alert")

Bootstrap alert to provide contextual feedback messages for typical user actions with the handful of available and flexible alert messages.

## Getting Started
Add the dependency in `pubspec.yaml`:

```yaml
dependencies:
  ...
  bs_flutter: any
```

### Alert
Example: [`main.dart`](https://github.com/kholifanalfon/bs_flutter_alert/blob/main/example/lib/main.dart)

![Alt text](https://raw.githubusercontent.com/kholifanalfon/bs_flutter_alert/main/screenshot/example.png "Screenshot Example Alert")

Alert success
```dart
// ...
  BsAlert(
    closeButton: true,
    margin: EdgeInsets.only(bottom: 10.0),
    child: Text('Alert Primary'),
  ),
// ...
```

Alert with Heading
```dart
// ...
  BsAlert(
    closeButton: true,
    margin: EdgeInsets.only(bottom: 10.0),
    style: BsAlertStyle.success,
    heading: Text('Hello World'),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Alert Dark'),
      ],
    ),
  )
// ...
```

You can create custom alert style using `BsAlertStyle` and alert color using `BsAlertColor`

```dart
  static const BsAlertColor primary = BsAlertColor(
    color: Color(0xff084298),
    backgroundColor: Color(0xffcfe2ff),
    borderColor: Color(0xffb6d4fe),
  );
```

```dart
  static const BsAlertStyle primary = BsAlertStyle(
    color: BsAlertColor.primary,
    borderRadius: BorderRadius.all(Radius.circular(5.0)),
  );
```

