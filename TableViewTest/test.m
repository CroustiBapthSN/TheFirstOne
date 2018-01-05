//
//  test.m
//  TableViewTestTests
//
//  Created by SNCFDev on 13/12/2017.
//  Copyright © 2017 SNCFDev. All rights reserved.
//

#import <XCTest/XCTest.h>


@interface test : XCTestCase


@end

@implementation test

- (void)setUp {
    [super setUp];
    _vcToTest = [[ViewController alloc]init];
    
}
    
- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testMoyenneAge {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}



- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
