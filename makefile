
foo = 1

FOO = foo
F = f

DEF = no
DEF2 = no

ifdef $(FOO)
DEF = yes
endif

ifdef $(F)oo
DEF2 = yes
endif


DEF3 = no
FUNC = $1
ifdef $(call FUNC,DEF)3
  DEF3 = yes
endif

all:
	@echo DEF=$(DEF) DEF2=$(DEF2) DEF3=$(DEF3)','','DEF=yes DEF2=yes DEF3=yes
