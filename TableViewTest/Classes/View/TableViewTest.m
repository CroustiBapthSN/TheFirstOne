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
    _inputZoneName.layer.cornerRadius = 15;
    _inputZoneFirstName.text = _input;
    _inputZoneFirstName.layer.cornerRadius = 15;
    _inputZoneAge.text = _input;
    _inputZoneAge.layer.cornerRadius = 15;
    _setCellButton.layer.cornerRadius = 12;
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
- (IBAction)DefaultColor:(id)sender {
    _inputZoneName.backgroundColor = [UIColor blackColor];
    _inputZoneFirstName.backgroundColor = [UIColor blackColor];
    _inputZoneAge.backgroundColor = [UIColor blackColor];
    
}

- (IBAction)changeRedColor:(id)sender {
    _inputZoneName.backgroundColor = [UIColor redColor];
    _inputZoneFirstName.backgroundColor = [UIColor redColor];
    _inputZoneAge.backgroundColor = [UIColor redColor];
}

- (IBAction)ChangeBlueColor:(id)sender {
    _inputZoneName.backgroundColor = [UIColor blueColor];
    _inputZoneFirstName.backgroundColor = [UIColor blueColor];
    _inputZoneAge.backgroundColor = [UIColor blueColor];
}

@end
