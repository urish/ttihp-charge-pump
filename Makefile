# SPDX-License-Identifier: Apache-2.0
# Copyright 2025 Uri Shaked

MACRO := tt_um_urish_dickson_pump
TARGET_GDS := gds/$(MACRO).gds
SOURCE_GDS := gds/$(MACRO).source.gds
SPICE := spice/$(MACRO).spice

PDK := ihp-sg13g2
MAGIC_RC := $(PDK_ROOT)/$(PDK)/libs.tech/magic/$(PDK).magicrc

$(TARGET_GDS): $(SOURCE_GDS)
	python scripts/make_final_gds.py $< $@

$(SPICE): $(TARGET_GDS)
	magic -rcfile $(MAGIC_RC) -noconsole -dnull scripts/extract_for_sim.tcl $< $@ $(MACRO)

spice/pdk_lib.spice:
	echo ".lib '$(PDK_ROOT)/$(PDK)/libs.tech/ngspice/models/cornerCAP.lib cap_typ' tt" > $@
	echo ".lib '$(PDK_ROOT)/$(PDK)/libs.tech/ngspice/models/cornerMOSlv.lib mos_tt' tt" >> $@
	echo ".include '$(PDK_ROOT)/$(PDK)/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice'" >> $@

sim: $(SPICE) spice/pdk_lib.spice spice/testbench.spice
	ngspice spice/testbench.spice
.phony: sim

clean:
	rm -f $(TARGET_GDS) $(SPICE)
.phony: clean
