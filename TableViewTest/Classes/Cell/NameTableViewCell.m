//
//  NameTableViewCell.m
//  TableViewTest
//
//  Created by SNCFDev on 24/11/2017.
//  Copyright © 2017 SNCFDev. All rights reserved.
//

#import "NameTableViewCell.h"
#import "Person.h"

@implementation NameTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setPerson: (Person*) name {
    _nameLabel.text = name.getNom;
    _prenomLabel.text = name.getPrenom;
    CIColor *coreColor = [CIColor colorWithString:name.getColor];
    _nameLabel.textColor = [UIColor colorWithCIColor:coreColor];
    _prenomLabel.textColor = [UIColor colorWithCIColor:coreColor];

}

@end
