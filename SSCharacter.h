//
//  SSCharacter.h
//  pirate assignment
//
//  Created by saheb singh on 27/05/15.
//  Copyright (c) 2015 saheb singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSArmour.h"
#import "SSWeapon.h"
@interface SSCharacter : NSObject
@property(nonatomic,strong) SSArmour *armour;
@property(nonatomic,strong) SSWeapon *weapon;
@property(nonatomic) int health;
@property(nonatomic) int damage;


@end
