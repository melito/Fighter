//
//  MenuScene.m
//  Fighter
//
//  Created by Mel Gray on 8/11/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "MenuScene.h"
#import "FighterAppDelegate.h"

@implementation MenuScene

+(id) scene{
	CCScene *scene = [CCScene node];
	MenuScene *layer = [MenuScene node];
	[scene addChild:layer];
	return scene;
}

-(id) init{
	
	if ((self=[super init])) {
		
		CGSize screenSize = [CCDirector sharedDirector].winSize;
		
		[[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"BabyFighterMenu.aif"];
		
		CCSprite* background = [CCSprite spriteWithFile:@"MenuBackground.png"];
		background.anchorPoint = CGPointMake(0, 0);
		[self addChild:background];
		
		
		[CCMenuItemFont setFontSize:20];
		[CCMenuItemFont setFontName:@"Helvetica"];
		
		CCMenuItem *startGame = [CCMenuItemFont itemFromString:@"Start Game"
														target:self
													  selector:@selector(startGame:)];
		
		CCMenu *menu = [CCMenu menuWithItems:startGame, nil];
		[menu alignItemsVertically];
		//menu.position = CGPointMake(((screenSize.height/2)-30), screenSize.width/2);
		
		[self addChild:menu];
		
	}
	return self;
}

-(void)startGame:(id)sender {
	NSLog(@"Gettin ready to kill some babies....");
	[[CCDirector sharedDirector] replaceScene:[CCFadeTransition transitionWithDuration:0.5 scene:[FighterAppDelegate fightScene]]];
}


@end
