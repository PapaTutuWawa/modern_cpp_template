# CXX CXX_FLAGS, CATCH_PATH, OUTPUT_NAME and BUILD_BIN_PATH are all exported
# by ../Makefile
BUILD_PREFIX:=../$(BUILD_BIN_PATH)

OBJECT_FILES:=main.o
OBJECT_FILE_PATHS:=$(foreach obj, $(OBJECT_FILES), $(BUILD_PREFIX)/$(obj))
FLAGS:=

build: $(BUILD_PREFIX)/$(OUTPUT_NAME)
$(BUILD_PREFIX)/$(OUTPUT_NAME): $(OBJECT_FILE_PATHS)
	$(CXX) $(CXX_FLAGS) $(FLAGS) \
	    $? -o $@ 

$(BUILD_PREFIX)/main.o: main.cpp
	$(CXX) $(CXX_FLAGS) \
	     -c main.cpp \
	     -o $@

.PHONY: clean
clean:
	-rm $(OBJECT_FILE_PATHS)
	-rm $(BUILD_PREFIX)/$(OUTPUT_NAME)
