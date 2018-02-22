//
//  PersonTest.m
//  TableViewTestTests
//
//  Created by SNCFDev on 02/01/2018.
//  Copyright © 2018 SNCFDev. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Person.h"
#import "NameTableViewCell.h"

@interface PersonTest : XCTestCase

@property NSMutableArray* peoples;
@property UILabel* label;

@end

@implementation PersonTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.

    
    Person * person1 = [[Person alloc] init];
    Person * person2 = [[Person alloc] init];
    _peoples = [[NSMutableArray alloc] init];
    person1.nom = @"HURIER";
    person1.prenom = @"Baptiste";
    person1.age = 22;
    [_peoples addObject:person1];
    person2.age = 28;
    [_peoples addObject:person2];
    
    
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

- (void) testMoyenneAge {

    int cumul = 0;
    for (int i=0; i < [_peoples count]; i++) {
        Person * element = [_peoples objectAtIndex:i];
        cumul += element.getAge;
    }
    int moyenne = cumul / [_peoples count];
    
    XCTAssertEqual(moyenne, 25);
}

@end
