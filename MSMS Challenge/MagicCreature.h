//
//  MagicCreature.h
//  MSMS Challenge
//
//  Created by Max Lettenberger on 5/19/15.
//  Copyright (c) 2015 Max. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MagicCreature : NSObject

@property NSString *name;
@property NSString *detail;

-(instancetype)initWithName:(NSString *)name detail:(NSString *)detail;

@end

