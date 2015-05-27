//
//  ViewController.h
//  pirate assignment
//
//  Created by saheb singh on 24/05/15.
//  Copyright (c) 2015 saheb singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SSFactory.h"
#import "SSCharacter.h"
#import "SSBoss.h"
@interface ViewController : UIViewController
//iVars
@property (nonatomic) CGPoint currentPoint;
@property(nonatomic,strong) NSArray *tiles;
@property(nonatomic,strong) SSCharacter *character;
@property(nonatomic,strong) SSBoss *boss;
//Labels
@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;
@property (weak, nonatomic) IBOutlet UILabel *healthLabel;
@property (weak, nonatomic) IBOutlet UILabel *damageLabel;
@property (weak, nonatomic) IBOutlet UILabel *weaponLabel;
@property (weak, nonatomic) IBOutlet UILabel *armourLabel;
@property (weak, nonatomic) IBOutlet UILabel *storyLabel;

//IBActions
- (IBAction)actionButtonPressed:(id)sender;
- (IBAction)northButtonPressed:(id)sender;
- (IBAction)eastButtonPressed:(id)sender;
- (IBAction)southButtonPressed:(id)sender;
- (IBAction)westButtonPressed:(id)sender;
- (IBAction)resetButtonPressed:(id)sender;

//IBOutlets
@property (weak, nonatomic) IBOutlet UIButton *actionButton;
@property (weak, nonatomic) IBOutlet UIButton *northButton;
@property (weak, nonatomic) IBOutlet UIButton *eastButton;
@property (weak, nonatomic) IBOutlet UIButton *westButton;
@property (weak, nonatomic) IBOutlet UIButton *southButton;
@end

