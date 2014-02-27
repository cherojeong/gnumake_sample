arg1 = first
arg2 = second
arg3 = third
arg4 = cc
arg5 = second

ifeq ($(arg1),$(arg2))
  $(info failed 1)
else ifeq '$(arg2)' "$(arg2)"
  ifdef undefined
    $(info failed 2)
  else
    $(info success)
  endif
else ifneq '$(arg3)' '$(arg3)'
  $(info failed 3)
else ifdef arg5
  $(info failed 4)
else ifdef undefined
  $(info failed 5)
else
  $(info failed 6)
endif

.PHONY: all
all:  
	@:','','success
