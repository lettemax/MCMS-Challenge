//
//  CreatureViewController.m
//  MSMS Challenge
//
//  Created by Max Lettenberger on 5/19/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController ()
@property (weak, nonatomic) IBOutlet UITextField *creatureNameEditText;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.title = self.creatureName;

}





@end
