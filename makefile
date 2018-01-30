SRC_DIR = src
TEST_DIR = tests


export C_INCLUDE_PATH += $(CURDIR)/src

all: src tests

.PHONY: src
src:
	$(MAKE) -C $(SRC_DIR)

.PHONY: tests
tests:
	$(MAKE) -C $(TEST_DIR)

clean:
	$(MAKE) -C $(TEST_DIR) clean && $(MAKE) -C $(SRC_DIR) clean
