//
//  SSFactory.m
//  pirate assignment
//
//  Created by saheb singh on 26/05/15.
//  Copyright (c) 2015 saheb singh. All rights reserved.
//

#import "SSFactory.h"

@implementation SSFactory
-(NSArray *)tiles{
    SSTile *tile1=[[SSTile alloc] init];
    tile1.story=@"It’s Captain Jack Sparrow we're after, and a fortune in gold. Run up your white flag, you scurvy scum, and bring me Captain Jack Sparrow, or I'll be sending you to Davy Jones.";
    tile1.backgroundImage=[UIImage imageNamed:@"apple.jpgeg"];
    SSWeapon *bluntedSword=[[SSWeapon alloc] init];
    bluntedSword.name=@"Blunted Sword";
    bluntedSword.damage=12;
    tile1.weapon=bluntedSword;
    tile1.actionButtonName=@"Take a sword";
    
    SSTile *tile2=[[SSTile alloc] init];
    tile2.story=@"Strike your colours you bloomin' cockroaches! Surrender Captain Jack Sparrow or by thunder we'll burn this city to the ground!";
    tile2.backgroundImage=[UIImage imageNamed:@"dead.jpeg"];
    SSArmour *steelArmor=[[SSArmour alloc] init];
    steelArmor.name=@"Steel Armor";
    steelArmor.health=8;
    tile2.armor=steelArmor;
    tile2.actionButtonName=@"Take Armor";
    
    
    
    SSTile *tile3=[[SSTile alloc] init];
    tile3.story=@"Where be Captain Jack Sparrow? Speak up! Or do you fancy a swim with Davy Jones?"
    "Don't tell him Carlos! Don’t be chicken!"
    "Pipe the lubber aloft mateys. Where be Captain Jack Sparrow and the treasure ya' bilge rat?!"
    "Do not tell him, Carlos! No, no, no, no!";
    tile3.backgroundImage=[UIImage imageNamed:@"p1.jpg"];
    tile3.healthEffect=12;
    tile3.actionButtonName=@"Stop at Dock";
    
    NSMutableArray *firstColumn=[[NSMutableArray alloc] init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    SSTile *tile4=[[SSTile alloc] init];
    tile4.story=@"Ye come seeking adventure and salty pirates, eh? Aye, you've come to the proper place. You seek the legend. You seek Captain Jack Sparrow. But heed this warning: only a true pirate be fit to sail with Captain Jack. And that methinks is a perilous voyage for even the bravest of seafarers. So, then, who among you thinks ye has what it takes to join Captain Jack's ruddy crew? Say 'aye";
    tile4.backgroundImage=[UIImage imageNamed:@"p2.jpg"];
    SSArmour *parrotArmour=[[SSArmour alloc] init];
    parrotArmour.health=20;
    parrotArmour.name=@"Parrot";
    tile4.armor=parrotArmour;
    tile4.actionButtonName=@"Addopt Parrot";
    
    
    
    SSTile *tile5=[[SSTile alloc] init];
    tile5.story=@"All these beautiful mermaids. Creatures of legend and lore, right in front of me! What an exciting adventure, indeed";
    tile5.backgroundImage=[UIImage imageNamed:@"pship.jpg"];
    SSWeapon *pistolWeapon=[[SSWeapon alloc] init];
    pistolWeapon.name=@"Pistol";
    pistolWeapon.damage=17;
    tile5.weapon=pistolWeapon;
    tile5.actionButtonName=@"Use Pistol";
    
    SSTile *tile6=[[SSTile alloc] init];
    tile6.story=@"Here now! I rather resent your implications, implicating that I was implicit and whatnot. I don't know anything about an amulet, much less had anything to do with taking one. Besides, had there been an amulet, I would have had to have known there had been an amulet in order to have taken an amulet what was there to be taken. Savvy?";
    tile6.backgroundImage=[UIImage imageNamed:@"sw.jpg"];
    tile6.healthEffect=-22;
    tile6.actionButtonName=@"Show no fear";
    
    NSMutableArray *secondColumn=[[NSMutableArray alloc] init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    SSTile *tile7=[[SSTile alloc] init];
    tile7.story=@"And, if you remember, though you probably don't, as a lamebrain like you can barely seem to remember that the Florida coast is west of the Antilles, what I was refering to as 'stupid' was your plot to mutiny.";
    tile7.backgroundImage=[UIImage imageNamed:@"p1.jpg"];
    tile7.healthEffect=8;
    tile7.actionButtonName=@"Fight those scum";
    
    SSTile *tile8=[[SSTile alloc] init];
    tile8.story=@"Here you are just thinking 'Jackie's not good enough to be a pirate, why can't he be more like his cousin Valerie, or Grandmama, proper pirates they be aye matey', and whatnot...";
    tile8.backgroundImage=[UIImage imageNamed:@"tiger.jpg"];
    tile8.healthEffect=-46;
    tile8.actionButtonName=@"Abandon Ship";
    
    SSTile *tile9=[[SSTile alloc] init];
    tile9.story=@"he Sword of Cortés is not a treasure I'm going to part with."
    "Not all treasure is silver and gold, Jack Sparrow";
    tile9.backgroundImage=[UIImage imageNamed:@"pship2.jpg"];
    tile9.healthEffect=20;
    tile9.actionButtonName=@"Take Treasure";
    
    NSMutableArray *thirdColumn=[[NSMutableArray alloc] init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    SSTile *tile10=[[SSTile alloc] init];
    tile10.story=@"This rum is half gone. WHY is the rum gone? I will TELL you why the rum is gone. This half-empty cask, which as of last night was full of rum bound for England, rum entrusted to this vessel to be carried in her hold until we reach our destination";
    tile10.backgroundImage=[UIImage imageNamed:@"p1.jpg"];
    tile10.healthEffect=-15;
    tile10.actionButtonName=@"Repel the invadors";
    
    SSTile *tile11=[[SSTile alloc] init];
    tile11.story=@"Five years ago I was on board a ship. Not my ship. It wasn't my choice to be there. I'd been impressed. Taken aboard by force";
    tile11.backgroundImage=[UIImage imageNamed:@"pship.jpg"];
    tile11.healthEffect=-7;
    tile11.actionButtonName=@"Swim Deeper";
    
    SSTile *tile12=[[SSTile alloc] init];
    tile12.story=@"If Chamba hasn't explained, this is what's happening. We've got a rogue pirate closing in on us, and he's made his intention to attack us clear. The rogue pirates are the ones that give no quarter, savvy? That means they take no prisoners. If they capture us, we're all dead";
    tile12.backgroundImage=[UIImage imageNamed:@"p2.jpg"];
    tile12.healthEffect=-15;
    tile12.actionButtonName=@"Fight";
    NSMutableArray *fourthColumn=[[NSMutableArray alloc] init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *tiles=[[NSArray alloc] initWithObjects:firstColumn,secondColumn,thirdColumn,fourthColumn,nil];

    return tiles;

}

-(SSBoss*) boss{
    SSBoss *boss=[[SSBoss alloc] init];
    boss.health=65;
    return boss
    ;

}
-(SSCharacter *)character{

    SSCharacter *character=[[SSCharacter alloc] init];
    character.health=100;
    SSArmour *armor=[[SSArmour alloc] init];
    character.armour=armor;
    armor.name=@"Cloak";
    armor.health=5;
    
    SSWeapon *weapon=[[SSWeapon alloc] init];
    weapon.name=@"Fist";
    weapon.damage=10;
    character.weapon=weapon;
    return character;

}
@end
