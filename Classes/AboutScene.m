//
//  AboutScene.m
//  Fighter
//
//  Created by Mel Gray on 9/22/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "AboutScene.h"


@implementation AboutScene

+(id) scene{
	CCScene *scene = [CCScene node];
	AboutScene *layer = [AboutScene node];
	[scene addChild:layer];
	return scene;
}

-(id) init{
	
	if ((self=[super init])) {
		// Add some labels and background
		CCSprite* background = [CCSprite spriteWithFile:@"SpaceBackground.gif"];
		background.anchorPoint = CGPointMake(0, 0);
		[self addChild:background];
		
		CCSprite *blackBar = [CCSprite spriteWithFile:@"BlackBar.gif"];
		blackBar.position = ccp(240, 260);
		blackBar.opacity = 175;
		[self addChild:blackBar];
		
	}
	return self;
}


@end
