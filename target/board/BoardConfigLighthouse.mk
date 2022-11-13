#
# Copyright (C) 2022 Project Lighthouse
#
# SPDX-License-Identifier: Apache-2.0
#

# Disable EAP Proxy because it depends on proprietary headers
# and breaks WPA Supplicant compilation.
DISABLE_EAP_PROXY := true

ifeq ($(call is-board-platform-in-list,$(QCOM_BOARD_PLATFORMS)),true)
# Include our Qualcomm Board configuration.
include device/qcom/common/BoardConfigQcom.mk
endif

# Kernel configuration.
include vendor/lighthouse/target/board/BoardConfigKernel.mk

# Soong
include vendor/lighthouse/target/board/BoardConfigSoong.mk
