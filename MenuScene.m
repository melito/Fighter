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

		CCMenuItem *showScores = [CCMenuItemFont itemFromString:@"High Scores"
														target:self
													  selector:@selector(showAbout:)];
		
		
		CCMenuItem *showAbout = [CCMenuItemFont itemFromString:@"About"
														target:self
													  selector:@selector(showAbout:)];
		
		
		CCMenu *menu = [CCMenu menuWithItems:startGame, showScores, showAbout, nil];
		[menu alignItemsVertically];
		menu.position = CGPointMake(((screenSize.width/2)/2)+10, screenSize.height/2);
		
		[self addChild:menu];
		
	}
	return self;
}

-(void)startGame:(id)sender {
	NSLog(@"Gettin ready to kill some babies....");
	[[CCDirector sharedDirector] replaceScene:[CCFadeTransition transitionWithDuration:0.5 scene:[FighterAppDelegate fightScene]]];
}

-(void)showAbout:(id)sender{
	[[CCDirector sharedDirector] replaceScene:[CCSlideInRTransition transitionWithDuration:0.5 scene:[HighScoreScene scene]]];
}


@end
