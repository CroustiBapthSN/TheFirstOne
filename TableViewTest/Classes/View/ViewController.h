//
//  ViewController.h
//  TableViewTest
//
//  Created by SNCFDev on 24/11/2017.
//  Copyright © 2017 SNCFDev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewTest.h"

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource, protocoleDelegateTest>

@property (nonatomic,weak) NSMutableArray * peoples;

- (int)moyenneAge:(NSMutableArray*)peoples;

@end
