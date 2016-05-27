//
//  AlgorithmTests.m
//  AlgorithmTests
//
//  Created by Hertz on 5/27/16.
//  Copyright © 2016 Hertz. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <Algorithm/Sort.h>

@interface AlgorithmTests : XCTestCase

@end

@implementation AlgorithmTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    Sort *s = [[Sort alloc] init];
    int array[] = {1, 2, 5, 4, 3};
    int nsize = sizeof(array)/sizeof(array[0]);
    [s bubbleSortWithArray:array Size:nsize];
    for(int i = 0; i < nsize; i++) {
        NSLog(@"%d\t", array[i]);
    }
    
    NSLog(@"\n");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
