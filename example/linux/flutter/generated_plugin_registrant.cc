//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <redux_hooks/redux_hooks_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) redux_hooks_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ReduxHooksPlugin");
  redux_hooks_plugin_register_with_registrar(redux_hooks_registrar);
}
