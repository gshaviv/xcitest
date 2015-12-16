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
    XCTestExpectation *expt = [self expectationWithDescription:@"expect"];
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [NSThread sleepForTimeInterval:10];
        [expt fulfill];
    });
    [self waitForExpectationsWithTimeout:15 handler:nil];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
            [NSThread sleepForTimeInterval:5];
        });
    }];
}

@end
