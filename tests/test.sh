#!/bin/bash

# Run cmake tests
if which ctest; then
    ctest -C Debug --output-on-failure --output-log test_log.txt
fi
