//
//  TableViewTest.m
//  TableViewTest
//
//  Created by SNCFDev on 24/11/2017.
//  Copyright © 2017 SNCFDev. All rights reserved.
//

#import "TableViewTest.h"
#import "Person.h"
#import "ViewController.h"

@interface TableViewTest()

@property (weak, nonatomic) IBOutlet UITextField *inputZoneName;
@property (weak, nonatomic) IBOutlet UITextField *inputZoneFirstName;
@property (weak, nonatomic) IBOutlet UITextField *inputZoneAge;

@property (weak, nonatomic) IBOutlet UIButton *setCellButton;

@end

@implementation TableViewTest

Person * nameIt;

-(void)viewDidLoad{
    _inputZoneName.text = _input;
    _inputZoneFirstName.text = _input;
    _inputZoneAge.text = _input;
}

- (IBAction)testButton:(id)sender {
    if (_delegate != nil) {
        Person *nameIt = [[Person alloc] init];
        nameIt.nom = _inputZoneName.text;
        nameIt.prenom = _inputZoneFirstName.text;
        nameIt.age = _inputZoneAge.text.intValue;
        CGColorRef colorRef = _inputZoneName.backgroundColor.CGColor;
        nameIt.color = [CIColor colorWithCGColor:colorRef].stringRepresentation;
        [_delegate addToList:nameIt];
    }

    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)changeDefaultColor:(id)sender {
    _inputZoneName.backgroundColor = [UIColor grayColor];
    _inputZoneFirstName.backgroundColor = [UIColor grayColor];
    _inputZoneAge.backgroundColor = [UIColor grayColor];
    
}

- (IBAction)changeRedColor:(id)sender {
    _inputZoneName.backgroundColor = [UIColor redColor];
    _inputZoneFirstName.backgroundColor = [UIColor redColor];
    _inputZoneAge.backgroundColor = [UIColor redColor];
}

- (IBAction)ChangeGreenColor:(id)sender {
    _inputZoneName.backgroundColor = [UIColor greenColor];
    _inputZoneFirstName.backgroundColor = [UIColor greenColor];
    _inputZoneAge.backgroundColor = [UIColor greenColor];
}

@end
