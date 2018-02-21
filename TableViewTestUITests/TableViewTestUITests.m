//
//  TableViewTestUITests.m
//  TableViewTestUITests
//
//  Created by SNCFDev on 24/11/2017.
//  Copyright © 2017 SNCFDev. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface TableViewTestUITests : XCTestCase

@property UIViewController *vcToTest;
@property UIStoryboard *storyToTest;


@end

@implementation TableViewTestUITests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testColorGreen {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *sEnregistrerButton = app.buttons[@"S'enregistrer"];
    [sEnregistrerButton tap];
    
    XCUIElement *element = [[[[app.otherElements containingType:XCUIElementTypeNavigationBar identifier:@"TableViewTest"] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element;
    XCUIElement *textField = [[element childrenMatchingType:XCUIElementTypeTextField] elementBoundByIndex:0];
    [textField tap];
    [textField typeText:@"azer"];
    
    XCUIElement *textField2 = [[element childrenMatchingType:XCUIElementTypeTextField] elementBoundByIndex:1];
    [textField2 tap];
    [textField2 typeText:@"azer"];
    
    XCUIElement *textField3 = [[element childrenMatchingType:XCUIElementTypeTextField] elementBoundByIndex:2];
    [textField3 tap];
    [textField3 typeText:@"11"];
    [app.toolbars.buttons[@"Vert"] tap];
    [sEnregistrerButton tap];
    
    XCUIElementQuery *tablesQuery = app.tables;
    XCUIElement *azerStaticText = tablesQuery/*@START_MENU_TOKEN@*/.staticTexts[@"AZER"]/*[[".cells.staticTexts[@\"AZER\"]",".staticTexts[@\"AZER\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/;
    [azerStaticText tap];
}

- (void)testColorRed{

    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElement *sEnregistrerButton = app.buttons[@"S'enregistrer"];
    [sEnregistrerButton tap];
    
    XCUIElement *element = [[[[app.otherElements containingType:XCUIElementTypeNavigationBar identifier:@"TableViewTest"] childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element childrenMatchingType:XCUIElementTypeOther].element;
    XCUIElement *textField = [[element childrenMatchingType:XCUIElementTypeTextField] elementBoundByIndex:0];
    [textField tap];
    [textField typeText:@"HURIER"];
    
    XCUIElement *textField2 = [[element childrenMatchingType:XCUIElementTypeTextField] elementBoundByIndex:1];
    [textField2 tap];
    [textField2 typeText:@"Baptiste"];
    
    XCUIElement *textField3 = [[element childrenMatchingType:XCUIElementTypeTextField] elementBoundByIndex:2];
    [textField3 tap];
    [textField3 typeText:@"22"];
    [app.toolbars.buttons[@"Rouge"] tap];
    [sEnregistrerButton tap];
    
}

- (UIColor*)getColor:(UILabel*)label{
    return label.textColor;
}

@end
