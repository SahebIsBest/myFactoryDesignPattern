//
//  SSFactory.h
//  pirate assignment
//
//  Created by saheb singh on 26/05/15.
//  Copyright (c) 2015 saheb singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSTile.h"
#import "SSCharacter.h"
#import "SSBoss.h"
@interface SSFactory : NSObject

-(NSArray*)tiles;
-(SSCharacter*)character;
-(SSBoss*) boss;
@end
