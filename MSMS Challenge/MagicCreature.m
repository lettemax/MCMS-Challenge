//
//  MagicCreature.m
//  MSMS Challenge
//
//  Created by Max Lettenberger on 5/19/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import "MagicCreature.h"

@implementation MagicCreature

-(instancetype)initWithName:(NSString *)name detail:(NSString *)detail;
{
    self.name = name;
    self.detail = detail;

    return self;
}

@end
