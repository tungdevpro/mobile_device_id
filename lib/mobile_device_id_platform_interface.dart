import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'mobile_device_id_method_channel.dart';

abstract class MobileDeviceIdPlatform extends PlatformInterface {
  /// Constructs a MobileDeviceIdPlatform.
  MobileDeviceIdPlatform() : super(token: _token);

  static final Object _token = Object();

  static MobileDeviceIdPlatform _instance = MethodChannelMobileDeviceId();

  /// The default instance of [MobileDeviceIdPlatform] to use.
  ///
  /// Defaults to [MethodChannelMobileDeviceId].
  static MobileDeviceIdPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [MobileDeviceIdPlatform] when
  /// they register themselves.
  static set instance(MobileDeviceIdPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getDeviceId() {
    throw UnimplementedError('getDeviceId() has not been implemented.');
  }
}
