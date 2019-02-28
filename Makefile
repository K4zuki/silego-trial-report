ifeq ($(OS),Windows_NT)
HOME = C:/Users/$(USERNAME)
endif
PANSTYLES= /usr/local/var
MISC= $(PANSTYLES)/pandoc_misc
include $(MISC)/Makefile.in
PROJECT= `pwd`

## userland: uncomment and replace
# MDDIR:= markdown
# DATADIR:= data
# TARGETDIR:= Out
# IMAGEDIR:= images

# CONFIG:= config.yaml
# INPUT:= TITLE.md
 TARGET:= SLG46826TRY
# TARGET:= TARGET-$(DATE)-$(HASH)
# REFERENCE:= $(MISC)/ref.docx
# COREPROPFLAGS := --table "Normal Table=Centered"
# COREPROPFLAGS += --paragraph "Normal=Body Text"
##
include $(MISC)/Makefile
