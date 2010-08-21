//
//  CleverCollieScene.m
//  Fighter
//
//  Created by Mel Gray on 8/11/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "CleverCollieScene.h"

@implementation CleverCollieScene

@synthesize sceneLoading;

+(id) scene
{
	// 'scene' is an autorelease object.
	CCScene *scene = [CCScene node];
	
	// 'layer' is an autorelease object.
	CleverCollieScene *layer = [CleverCollieScene node];
	
	// add layer as a child to scene
	[scene addChild: layer];
	
	// return the scene
	return scene;
}

// initialize your instance here
-(id) init
{
	if( (self=[super init])) {
		
		sceneLoading = NO;
		
		CCSprite* background = [CCSprite spriteWithFile:@"LogoBackground.png"];
		background.anchorPoint = CGPointMake(0, 0);
		[self addChild:background];

		CCSprite* logo = [CCSprite spriteWithFile:@"LogoName.png"];
		logo.anchorPoint = CGPointMake(0, 0);
		[logo setOpacity:0];
		[self addChild:logo];
		[logo runAction:[CCFadeIn actionWithDuration:0.5]];

		[[SimpleAudioEngine sharedEngine] playEffect:@"DogBark.aiff"];

		[self schedule: @selector(pauseBeforeLoadingMenu:) interval:1.5];

		
	}
	return self;
}

-(void) pauseBeforeLoadingMenu:(ccTime) dt {
	if (sceneLoading == NO) {
		sceneLoading = YES;
		[[CCDirector sharedDirector] replaceScene:[CCFadeTransition transitionWithDuration:0.5f scene:[MenuScene scene]]];		
	}
}

- (void) dealloc {
	// don't forget to call "super dealloc"
	[super dealloc];
}



@end
