//
//  HighScoreScene.m
//  Fighter
//
//  Created by Mel Gray on 8/13/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "HighScoreScene.h"

@implementation HighScoreScene


+(id) scene{
	CCScene *scene = [CCScene node];
	HighScoreScene *layer = [HighScoreScene node];
	[scene addChild:layer];
	return scene;
}

-(id) init{
	
	if ((self=[super init])) {
		CCSprite* background = [CCSprite spriteWithFile:@"SpaceBackground.gif"];
		background.anchorPoint = CGPointMake(0, 0);
		[self addChild:background];
		
		[CCMenuItemFont setFontSize:20];
		[CCMenuItemFont setFontName:@"Helvetica"];
	}
	return self;
}


@end
