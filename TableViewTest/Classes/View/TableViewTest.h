//
//  TableViewTest.h
//  TableViewTest
//
//  Created by SNCFDev on 24/11/2017.
//  Copyright © 2017 SNCFDev. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol protocoleDelegateTest

- (void) addToList:(NSObject*)people;

@end

@interface TableViewTest : UIViewController

@property (nonatomic, weak) id <protocoleDelegateTest> delegate;
@property (nonatomic, weak) NSString* input;

@end
