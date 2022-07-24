#import "ReduxHooksPlugin.h"
#if __has_include(<redux_hooks/redux_hooks-Swift.h>)
#import <redux_hooks/redux_hooks-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "redux_hooks-Swift.h"
#endif

@implementation ReduxHooksPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftReduxHooksPlugin registerWithRegistrar:registrar];
}
@end
