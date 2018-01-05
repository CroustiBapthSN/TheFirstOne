//
//  PersonTest.m
//  TableViewTestTests
//
//  Created by SNCFDev on 02/01/2018.
//  Copyright © 2018 SNCFDev. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"

@interface PersonTest : XCTestCase

@end

@implementation PersonTest

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
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void) testPerson {
    Person *person = [[Person alloc]init];
    person.nom = @"Hurier";
    person.prenom = @"Baptiste";

    XCTAssertEqualObjects(person.getPrenom, @"Baptiste");
    XCTAssertEqualObjects(person.getNom, @"HURIER");
}

@end
