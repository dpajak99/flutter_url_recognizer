#import "UrlRecognizerPlugin.h"
#if __has_include(<url_recognizer/url_recognizer-Swift.h>)
#import <url_recognizer/url_recognizer-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "url_recognizer-Swift.h"
#endif

@implementation UrlRecognizerPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftUrlRecognizerPlugin registerWithRegistrar:registrar];
}
@end
