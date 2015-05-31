# Copyright (C) 2015 The SaberMod Project
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

ifdef SM_AND_NAME
$(info   TARGET_SABERMOD_ANDROID_GCC_VERSION=$(SM_AND_NAME))
endif
ifdef SM_KERNEL_NAME
$(info   TARGET_SABERMOD_KERNEL_GCC_VERSION=$(SM_KERNEL_NAME))
endif
ifeq ($(strip $(USE_KERNEL_OPTIMIZATIONS)),true)
$(info   KERNEL_OPTIMIZATIONS=true)
else
$(info   KERNEL_OPTIMIZATIONS=false)
endif
ifeq ($(strip $(USE_SABER_INLINE_KERNEL_BUILDING)),true)
$(info   SABER_INLINE_KERNEL_BUILDING=true)
else
$(info   SABER_INLINE_KERNEL_BUILDING=false)
endif
ifdef GCC_OPTIMIZATION_LEVELS
$(info   OPTIMIZATION_OPTIONS=$(GCC_OPTIMIZATION_LEVELS))
endif
ifdef OPT_VERSION
$(info   OPTIMIZATION VERSION=$(OPT_VERSION))
endif
