//
//  ViewController.m
//  TableViewTest
//
//  Created by SNCFDev on 24/11/2017.
//  Copyright © 2017 SNCFDev. All rights reserved.
//

#import "ViewController.h"
#import "TableViewTest.h"
#import "Person.h"
#import "NameTableViewCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITableView *nameTableView;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;

@end

@implementation ViewController

NSMutableArray * peoples ;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    _nameTableView.delegate = self;
    _nameTableView.dataSource = self;
    
    peoples = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    [self.nameTableView reloadData];
    int value = [self moyenneAge:peoples];
    _ageLabel.text = [NSString stringWithFormat:@"%d",value];
    
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    NameTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NameCell" forIndexPath:indexPath];
    Person * name = [peoples objectAtIndex:indexPath.row];
    //NSString * name = [peoples objectAtIndex:indexPath.row].nom;
    [cell setPerson:name];
    
    return cell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [peoples count];
}

- (void) addToList:(Person*)people{
    [peoples addObject:people];
}

 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"segueName"]) {
        TableViewTest *vc = segue.destinationViewController;
        vc.delegate = self;
    }
}

- (int)moyenneAge:(NSMutableArray *)peoples{
        
    if ([peoples count] == 0 ) {
        return 0;
    }
    
    int cumul = 0;
    for (int i=0; i < [peoples count]; i++) {
        Person * element = [peoples objectAtIndex:i];
        cumul += element.getAge;
    }
    int moyenne = cumul / [peoples count];
    
    return moyenne;
}

@end
