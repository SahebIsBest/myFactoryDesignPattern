//
//  ViewController.m
//  pirate assignment
//
//  Created by saheb singh on 24/05/15.
//  Copyright (c) 2015 saheb singh. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    SSFactory *factory=[[SSFactory alloc] init];
    self.tiles=[factory tiles];
    self.character=[factory character];
    self.boss=[factory boss];
    self.currentPoint=CGPointMake(0, 0);
    [self updateTile];
    [self updateButtons];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated{
    
}
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [self resignFirstResponder];
    return YES
    ;
}

- (IBAction)actionButtonPressed:(id)sender
{
    SSTile *tile=[[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    if (tile.healthEffect==15) {
        self.boss.health=self.boss.health-self.character.damage;
    }
    [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    if (self.character.health<=0) {
        UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"Death Message" message:@"You Died!! Please restart game!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];
    }else if (self.boss.health<=0){
        UIAlertView *alertView=[[UIAlertView alloc] initWithTitle:@"Victory Message" message:@"You have defeated the evil pirate boss" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alertView show];
    
    }
    [self updateTile];
 
    
}
#pragma mark- IBActions
- (IBAction)resetButtonPressed:(id)sender {
    
    self.character=nil;
    self.boss=nil;
    [self viewDidLoad];
}


- (IBAction)northButtonPressed:(id)sender
{
    self.currentPoint=CGPointMake(self.currentPoint.x, self.currentPoint.y+1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastButtonPressed:(id)sender
{
    self.currentPoint=CGPointMake(self.currentPoint.x+1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)southButtonPressed:(id)sender
{
    self.currentPoint=CGPointMake(self.currentPoint.x, self.currentPoint.y-1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)westButtonPressed:(id)sender
{
    self.currentPoint=CGPointMake(self.currentPoint.x-1, self.currentPoint.y);
    [self updateButtons];
    [self updateTile];
}


#pragma mark - Helper Methods
-(void)updateTile{
    SSTile *tileModel=  [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.storyLabel.text=tileModel.story;
    self.backgroundImageView.image=tileModel.backgroundImage;
    self.healthLabel.text=[NSString stringWithFormat:@"%i",self.character.health];
    self.damageLabel.text=[NSString stringWithFormat:@"%i",self.character.damage];
    self.armourLabel.text=self.character.armour.name;
    self.weaponLabel.text=self.character.weapon.name;
    [self.actionButton setTitle:tileModel.actionButtonName forState:UIControlStateNormal];
}

-(void)updateButtons{

    self.westButton.hidden=[self tileExistsAtPoint:CGPointMake(self.currentPoint.x-1, self.currentPoint.y)];
    self.eastButton.hidden=[self tileExistsAtPoint:CGPointMake(self.currentPoint.x+1, self.currentPoint.y)];
    self.northButton.hidden=[self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y+1)];
    self.southButton.hidden=[self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y-1)];
    
}


-(BOOL)tileExistsAtPoint:(CGPoint)point{
    if (point.x>=0 && point.y>=0 && point.x<self.tiles.count && point.y<[[self.tiles objectAtIndex:point.x] count]) {
        return NO;
    }else{
        return YES;
    
    }
    
}

-(void)updateCharacterStatsForArmor:(SSArmour*)armor withWeapons:(SSWeapon*)weapon withHealthEffect:(int)healthEffect{

    if (armor!=nil) {
        self.character.health=self.character.health-self.character.armour.health+armor.health;
        self.character.armour=armor;
        
    }else if (weapon!=nil){
    
        self.character.damage=self.character.damage-self.character.weapon.damage+weapon.damage;
        self.character.weapon=weapon;
        
    
    }else if (healthEffect!=0){
        self.character.health=self.character.health+healthEffect;
    
    }else{
        self.character.health=self.character.health+self.character.armour.health;
        self.character.damage=self.character.damage+ self.character.weapon.damage;
    
    
    }
    
}


@end
