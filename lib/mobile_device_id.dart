import 'mobile_device_id_platform_interface.dart';

class MobileDeviceId {
  Future<String?> getDeviceId() {
    return MobileDeviceIdPlatform.instance.getDeviceId();
  }
}
