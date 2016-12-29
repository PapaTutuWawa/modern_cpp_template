# Flags
CXX:=clang
CXX_FLAGS:=-std=c++14 -lstdc++

# Directories
BUILD_DIR:=build
BUILD_TEST_DIR:=tests
BUILD_BIN_DIR:=bin

BUILD_TEST_PATH:=$(BUILD_DIR)/$(BUILD_TEST_DIR)
BUILD_BIN_PATH:=$(BUILD_DIR)/$(BUILD_BIN_DIR)

$(BUILD_DIR):
	mkdir $(BUILD_DIR)

$(BUILD_TEST_PATH): | $(BUILD_DIR)
	mkdir $(BUILD_TEST_PATH)

$(BUILD_BIN_PATH): | $(BUILD_DIR)
	mkdir $(BUILD_BIN_PATH)

# Paths
BASE:=$(shell pwd)
LOGURU_PATH:=$(BASE)/deps/loguru
CATCH_PATH:=$(BASE)/deps/Catch
GSL_PATH:=$(BASE)/deps/GSL

CXX_FLAGS +=-I$(GSL_PATH)/

export CXX CXX_FLAGS BUILD_TEST_PATH CATCH_PATH
## TARGETS
# Tests
.PHONY: tests
tests: | $(BUILD_TEST_PATH)
	$(MAKE) -C tests/ all_tests

.PHONY: run_tests
run_tests:
	$(MAKE) -C tests/ run_all

.PHONY: clean
# 1. Clean the built tests
clean:	
	$(MAKE) -C tests/ clean
