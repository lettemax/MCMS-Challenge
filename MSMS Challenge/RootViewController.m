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
    MagicCreature *unicorn = [[MagicCreature alloc] initWithName:@"Unicorn" detail:@"stab you with one horn"];
    MagicCreature *bigFoot = [[MagicCreature alloc] initWithName:@"Big Foot" detail:@"I will squash you!"];
    MagicCreature *lochness = [[MagicCreature alloc] initWithName:@"Lochness" detail:@"You will never find me"];

    self.creatures = [NSMutableArray arrayWithObjects:pikachu, unicorn, bigFoot, lochness, nil];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID" forIndexPath:indexPath];
    MagicCreature *creature = [self.creatures objectAtIndex:indexPath.row];

    cell.detailTextLabel.text = creature.detail;
    cell.textLabel.text = creature.name;

    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.creatures.count;
}

- (IBAction)onAddButtonPressed:(UIButton *)sender
{

    NSString *creatureName = self.creatureName.text;
    NSString *creatureDetail = self.detailTextField.text;
    self.creatureName.text = @"";
    self.detailTextField.text = @"";
    MagicCreature *creatureToAdd = [[MagicCreature alloc] initWithName:creatureName detail:creatureDetail];
    [self.creatures addObject:creatureToAdd];
    [self.tableView reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
    CreatureViewController *creatureVC = segue.destinationViewController;

    MagicCreature *magicCreature = [self.creatures objectAtIndex:indexPath.row];
    creatureVC.magicCreature = magicCreature;

}


-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}




@end
