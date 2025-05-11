# SPDX-License-Identifier: Apache-2.0
# Copyright 2025 Uri Shaked

TARGET_GDS := gds/tt_um_urish_dickson_pump.gds
SOURCE_GDS := gds/tt_um_urish_dickson_pump.source.gds

$(TARGET_GDS): $(SOURCE_GDS)
	python scripts/make_final_gds.py $< $@

clean:
	rm -f $(TARGET_GDS)

