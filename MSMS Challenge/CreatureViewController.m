//
//  CreatureViewController.m
//  MSMS Challenge
//
//  Created by Max Lettenberger on 5/19/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "CreatureViewController.h"


@interface CreatureViewController () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *creatureNameEditText;
@property (weak, nonatomic) IBOutlet UILabel *creatureNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) IBOutlet UIImageView *creatureImageView;
//@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];



    self.creatureImageView.image = self.magicCreature.creatureImage;

    self.title = self.magicCreature.name;

    self.creatureNameLabel.text = self.magicCreature.name;

    self.creatureNameEditText.text = self.magicCreature.name;

    self.creatureNameEditText.hidden = YES;

    self.detailLabel.text = self.magicCreature.detail;

    self.magicCreature.name = @"Bill";

    NSLog(@"fight: %@", self.magicCreature.fight);
    NSLog(@"name: %@", self.magicCreature.name);
}

- (IBAction)onEditButtonPressed:(UIButton *)sender
{

    if ([sender.titleLabel.text isEqualToString:@"Edit"])
   {
       [sender setTitle:@"Done" forState:UIControlStateNormal];

       self.creatureNameEditText.hidden = NO;

   } else {
       [sender setTitle:@"Edit" forState:UIControlStateNormal];
       self.creatureNameEditText.hidden = YES;
       self.magicCreature.name = self.creatureNameEditText.text;
       self.creatureNameLabel.text = self.magicCreature.name;

   }
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.magicCreature.accessories.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID" forIndexPath:indexPath];
    cell.textLabel.text = [self.magicCreature.accessories objectAtIndex:indexPath.row];
    return cell;
}








@end
