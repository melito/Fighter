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
		
		CCTexture2D *logoTexture = [[CCTextureCache sharedTextureCache] addImage:@"LogoBackground.png"];
		CCSprite *background= [CCSprite spriteWithTexture:logoTexture];
		background.anchorPoint = CGPointMake(0, 0);
		[self addChild:background];

		CCTexture2D *nameTexture = [[CCTextureCache sharedTextureCache] addImage:@"LogoName.png"];
		CCSprite *logo = [CCSprite spriteWithTexture:nameTexture];
		logo.anchorPoint = CGPointMake(0, 0);
		
		float version = [[[UIDevice currentDevice] systemVersion] floatValue];
		if (version >= 4.0) {
			[logo setOpacity:0];
			[self addChild:logo];
			[logo runAction:[CCFadeIn actionWithDuration:0.5]];			
		} else {
			[self addChild:logo];
		}

		[[SimpleAudioEngine sharedEngine] playEffect:@"DogBark.aiff"];

		[self schedule: @selector(pauseBeforeLoadingMenu:) interval:1.5];

		
	}
	return self;
}

-(void) pauseBeforeLoadingMenu:(ccTime) dt {
	if (sceneLoading == NO) {
		sceneLoading = YES;
		
		float version = [[[UIDevice currentDevice] systemVersion] floatValue];
		if (version >= 4.0) {
			[[CCDirector sharedDirector] replaceScene:[CCFadeTransition transitionWithDuration:0.5f scene:[MenuScene scene]]];		
		} else {
			[[CCDirector sharedDirector] replaceScene:[MenuScene scene]];
		}
	}
}

- (void) dealloc {
	// don't forget to call "super dealloc"
	[super dealloc];
}



@end
