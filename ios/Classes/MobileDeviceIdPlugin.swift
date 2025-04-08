import Flutter
import UIKit

public class MobileDeviceIdPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "com.yhlabs.plugin_native/mobile_device_id", binaryMessenger: registrar.messenger())
    let instance = MobileDeviceIdPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getDeviceId":
      result(UIDevice.current.identifierForVendor?.uuidString ?? "")
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
