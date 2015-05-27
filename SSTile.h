//
//  SSTile.h
//  pirate assignment
//
//  Created by saheb singh on 26/05/15.
//  Copyright (c) 2015 saheb singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SSWeapon.h"
#import "SSArmour.h"

@interface SSTile : NSObject
@property (nonatomic,strong) NSString *story;
@property (nonatomic,strong)UIImage *backgroundImage;
@property (nonatomic,strong)NSString *actionButtonName;
@property(nonatomic,strong) SSWeapon *weapon;
@property (nonatomic,strong)SSArmour *armor;
@property(nonatomic) int healthEffect;


@end
