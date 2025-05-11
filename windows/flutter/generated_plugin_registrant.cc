//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <auto_updater_windows/auto_updater_windows_plugin_c_api.h>
#include <desktop_updater/desktop_updater_plugin_c_api.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  AutoUpdaterWindowsPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("AutoUpdaterWindowsPluginCApi"));
  DesktopUpdaterPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("DesktopUpdaterPluginCApi"));
}
