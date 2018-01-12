#include <iostream>
#include <gtest/gtest.h>
#include <gmock/gmock.h>

TEST(SuiteName, TestName) {
    ASSERT_EQ(1, 1);
}

int main(int argc, char* argv[]) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
