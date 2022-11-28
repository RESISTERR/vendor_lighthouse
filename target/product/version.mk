# Copyright (C) 2022 Project Lighthouse
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Versioning System
LIGHTHOUSE_CODENAME := torpedo
LIGHTHOUSE_BUILD_TYPE ?= UNOFFICIAL

OFFICIAL_DEVICES = $(shell cat vendor/lighthouse/products/lh.devices)
FOUND_DEVICE =  $(filter $(LIGHTHOUSE_BUILD), $(OFFICIAL_DEVICES))

ifeq ($(FOUND_DEVICE),$(LIGHTHOUSE_BUILD))
    LIGHTHOUSE_BUILD_TYPE := OFFICIAL
else
    LIGHTHOUSE_BUILD_TYPE := UNOFFICIAL
endif

# System version
TARGET_PRODUCT_SHORT := $(subst lighthouse_,,$(LIGHTHOUSE_BUILD_TYPE))

LIGHTHOUSE_DATE_YEAR := $(shell date -u +%Y)
LIGHTHOUSE_DATE_MONTH := $(shell date -u +%m)
LIGHTHOUSE_DATE_DAY := $(shell date -u +%d)
LIGHTHOUSE_DATE_HOUR := $(shell date -u +%H)
LIGHTHOUSE_DATE_MINUTE := $(shell date -u +%M)

LIGHTHOUSE_BUILD_DATE := $(LIGHTHOUSE_DATE_YEAR)$(LIGHTHOUSE_DATE_MONTH)$(LIGHTHOUSE_DATE_DAY)-$(LIGHTHOUSE_DATE_HOUR)$(LIGHTHOUSE_DATE_MINUTE)
LIGHTHOUSE_VERSION := LighthouseQC-$(LIGHTHOUSE_CODENAME)-$(LIGHTHOUSE_BUILD_VERSION)-$(LIGHTHOUSE_BUILD)-$(LIGHTHOUSE_BUILD_TYPE)-$(LIGHTHOUSE_BUILD_DATE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.lighthouse.codename=$(LIGHTHOUSE_CODENAME) \
  ro.lighthouse.device=$(LIGHTHOUSE_BUILD) \
  ro.lighthouse.version=$(LIGHTHOUSE_VERSION) \
  ro.lighthouse.build.date=$(LIGHTHOUSE_BUILD_DATE) \
  ro.lighthouse.build.type=$(LIGHTHOUSE_BUILD_TYPE) \
  ro.lighthouse.build.version=$(LIGHTHOUSE_BUILD_VERSION)
