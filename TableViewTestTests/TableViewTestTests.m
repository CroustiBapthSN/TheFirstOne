//
//  TableViewTestTests.m
//  TableViewTestTests
//
//  Created by SNCFDev on 24/11/2017.
//  Copyright © 2017 SNCFDev. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"
#import "Person.h"


@interface TableViewTestTests : XCTestCase

@property ViewController *vcToTest;
@property UIStoryboard *storyToTest;

@end

@implementation TableViewTestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    _vcToTest = ([storyboard.instantiateInitialViewController isKindOfClass:[ViewController class]]) ? (ViewController *)_vcToTest : nil;
    //_vcToTest = [storyboard asClass:[ViewController class]];

    
    //UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //_vcToTest = storyboard.instantiateInitialViewController;

  
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    _vcToTest = nil;
}

- (void)testExample {
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
