import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bs_flutter_alert/bs_flutter_alert.dart';

void main() {
  const MethodChannel channel = MethodChannel('bs_flutter_alert');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await BsFlutterAlert.platformVersion, '42');
  });
}
