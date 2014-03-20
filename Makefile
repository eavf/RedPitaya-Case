all: plastic-case.stl shield-metal-cut.dxf

plastic-case.stl:
shield-metal-cut.dxf:

%.stl: %.scad
	openscad -o $@ -d $@.deps $<

 %.dxf: %.ps
	pstoedit -f "dxf:-polyaslines" $< $@
