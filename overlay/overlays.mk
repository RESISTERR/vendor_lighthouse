#
# Copyright (C) 2022 Project Lighthouse
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
PRODUCT_PACKAGES += \
    LighthouseFrameworksOverlay \
    LighthouseSystemUIOverlay \
    LighthouseLauncherOverlay \
    LighthouseSettingsProviderOverlay \
    LighthouseSettingsOverlay \
    IconPackCircularAndroidOverlay \
    IconPackCircularLauncherOverlay \
    IconPackCircularSettingsOverlay \
    IconPackCircularSystemUIOverlay \
    IconPackCircularThemePickerOverlay \
    IconPackVictorAndroidOverlay \
    IconPackVictorLauncherOverlay \
    IconPackVictorSettingsOverlay \
    IconPackVictorSystemUIOverlay \
    IconPackVictorThemePickerOverlay \
    IconPackSamAndroidOverlay \
    IconPackSamLauncherOverlay \
    IconPackSamSettingsOverlay \
    IconPackSamSystemUIOverlay \
    IconPackSamThemePickerOverlay \
    IconPackKaiAndroidOverlay \
    IconPackKaiLauncherOverlay \
    IconPackKaiSettingsOverlay \
    IconPackKaiSystemUIOverlay \
    IconPackKaiThemePickerOverlay \
    IconPackFilledAndroidOverlay \
    IconPackFilledLauncherOverlay \
    IconPackFilledSettingsOverlay \
    IconPackFilledSystemUIOverlay \
    IconPackFilledThemePickerOverlay \
    IconPackRoundedAndroidOverlay \
    IconPackRoundedLauncherOverlay \
    IconPackRoundedSettingsOverlay \
    IconPackRoundedSystemUIOverlay \
    IconPackRoundedThemePickerOverlay \
    FontGoogleSansOverlay \
    FontInterOverlay \
    FontManropeOverlay \
    FontUrbanistOverlay


PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/lighthouse/overlay/static
PRODUCT_PACKAGE_OVERLAYS += vendor/lighthouse/overlay/static
