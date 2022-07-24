#include "include/redux_hooks/redux_hooks_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "redux_hooks_plugin.h"

void ReduxHooksPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  redux_hooks::ReduxHooksPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
