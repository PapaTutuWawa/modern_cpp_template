# CXX CXX_FLAGS, CATCH_PATH and BUILD_TEST_PATH are all exported
# by ../Makefile
TESTS:=bork example
TEST_PREFIX:=../$(BUILD_TEST_PATH)

all_tests: $(TESTS)

bork: $(TEST_PREFIX)/bork.o
$(TEST_PREFIX)/bork.o: test_bork.cpp
	$(CXX) $(CXX_FLAGS) \
		-I$(CATCH_PATH)/include \
		test_bork.cpp -o $@ 

example: $(TEST_PREFIX)/example.o
$(TEST_PREFIX)/example.o: test_example.cpp
	$(CXX) $(CXX_FLAGS) \
		-I$(CATCH_PATH)/include \
		test_example.cpp -o $@ 

.PHONY: clean
clean:
	rm $(foreach test, $(TESTS), $(TEST_PREFIX)/$(addsuffix .o, $(test)))

.PHONY: run_all
run_all: all_tests
	for test in $(TESTS); do \
		echo "Running $$test"; $(TEST_PREFIX)/$$test.o || exit 1; \
	done	
