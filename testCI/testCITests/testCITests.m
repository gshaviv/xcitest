//
//  testCITests.m
//  testCITests
//
//  Created by Guy on 13/12/2015.
//  Copyright © 2015 Guy. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "AppDelegate.h"

@interface testCITests : XCTestCase

@end

@implementation testCITests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    XCTAssertTrue([(AppDelegate*)[[UIApplication sharedApplication] delegate] returnTrue]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
