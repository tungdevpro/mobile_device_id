import 'package:flutter_test/flutter_test.dart';
import 'package:mobile_device_id/mobile_device_id.dart';
import 'package:mobile_device_id/mobile_device_id_platform_interface.dart';
import 'package:mobile_device_id/mobile_device_id_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMobileDeviceIdPlatform with MockPlatformInterfaceMixin implements MobileDeviceIdPlatform {
  @override
  Future<String?> getDeviceId() async {
    return '21';
  }
}

void main() {
  final MobileDeviceIdPlatform initialPlatform = MobileDeviceIdPlatform.instance;

  test('$MethodChannelMobileDeviceId is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMobileDeviceId>());
  });

  test('getDeviceId', () async {
    MobileDeviceId mobileDeviceIdPlugin = MobileDeviceId();
    MockMobileDeviceIdPlatform fakePlatform = MockMobileDeviceIdPlatform();
    MobileDeviceIdPlatform.instance = fakePlatform;

    expect(await mobileDeviceIdPlugin.getDeviceId(), '21');
  });
}
