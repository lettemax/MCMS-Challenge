//
//  ViewController.m
//  MSMS Challenge
//
//  Created by Max Lettenberger on 5/19/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "RootViewController.h"
#import "CreatureViewController.h"
#import "MagicCreature.h"

@interface RootViewController () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITextField *creatureName;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UITextField *detailTextField;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    MagicCreature *pikachu = [[MagicCreature alloc] initWithName:@"Pikachu" detail:@"Has electric powers"];

    self.creatures = [NSMutableArray arrayWithObjects:@"Unicorn", @"Big Foot", @"Lochness", nil];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID" forIndexPath:indexPath];

    cell.textLabel.text = [self.creatures objectAtIndex:indexPath.row];

    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.creatures.count;
}

- (IBAction)onAddButtonPressed:(UIButton *)sender
{
    [self.creatures addObject:self.creatureName.text];

    self.creatureName.text = @"";

    [self.tableView reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    CreatureViewController *creatureVC = segue.destinationViewController;

    NSLog(@"creature objecte %@", [self.creatures objectAtIndex:indexPath.row]);
    creatureVC.creatureName = [self.creatures objectAtIndex:indexPath.row];

}


-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}




@end
