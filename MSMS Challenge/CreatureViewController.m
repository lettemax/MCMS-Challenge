//
//  CreatureViewController.m
//  MSMS Challenge
//
//  Created by Max Lettenberger on 5/19/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "CreatureViewController.h"
#import "MagicCreature.h"

@interface CreatureViewController ()

@property (weak, nonatomic) IBOutlet UITextField *creatureNameEditText;
@property (weak, nonatomic) IBOutlet UILabel *creatureNameLabel;


@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = self.creatureName;

    self.creatureNameLabel.text = self.creatureName;

    self.creatureNameEditText.text = self.creatureName;

    self.creatureNameEditText.hidden = YES;
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
       self.creatureName = self.creatureNameEditText.text;
       self.creatureNameLabel.text = self.creatureName;

   }
}




@end
