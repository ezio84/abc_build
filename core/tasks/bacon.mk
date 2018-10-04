# Copyright (C) 2017 Unlegacy-Android
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

# -----------------------------------------------------------------
# Bacon update package

CUSTOM_TARGET_PACKAGE := $(PRODUCT_OUT)/ABC_ROM_$(TARGET_PRODUCT)-$(ABC_VERSION).zip

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(CUSTOM_TARGET_PACKAGE)
	$(hide) $(MD5SUM) $(CUSTOM_TARGET_PACKAGE) > $(CUSTOM_TARGET_PACKAGE).md5sum
	@echo " "
	@echo "THE   db       7MMmmmYp,   .g8mmmd· "
	@echo "     ;MM:       MM    Yb .dP·      · "
	@echo "    ,V^MM.      MM    dP dM·        "
	@echo "   ,M  ·MM      MM···bg  MM"
	@echo "   AbmmmqMA     MM    ·Y MM.           ____ ____ _  _  "
	@echo "  A·     VML    MM    ,9 ·Mb.     ,·   |__/ |  | |\/| "
	@echo ".AMA.   .AMMA  JMMmmmd9    ··bmmmd·    |  \ |__| |  |"
	@echo " "
	@echo -e "Package complete: $(CUSTOM_TARGET_PACKAGE)"
	@echo " "
	@echo "You are officially a karnt now "
