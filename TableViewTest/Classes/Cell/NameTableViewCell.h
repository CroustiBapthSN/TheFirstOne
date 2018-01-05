//
//  NameTableViewCell.h
//  TableViewTest
//
//  Created by SNCFDev on 24/11/2017.
//  Copyright © 2017 SNCFDev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Person.h"
@interface NameTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *prenomLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;

- (void) setPerson: (Person*) name;

@end
