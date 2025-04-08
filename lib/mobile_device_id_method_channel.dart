import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'mobile_device_id_platform_interface.dart';

/// An implementation of [MobileDeviceIdPlatform] that uses method channels.
class MethodChannelMobileDeviceId extends MobileDeviceIdPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('com.yhlabs.plugin_native/mobile_device_id');

  @override
  Future<String?> getDeviceId() async {
    final id = await methodChannel.invokeMethod<String>('getDeviceId');
    return id;
  }
}
