//
//  MenuScene.m
//  Fighter
//
//  Created by Mel Gray on 8/11/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "MenuScene.h"
#import "FightScene.h"
#import "HighScoreScene.h"
#import "AboutScene.h"

@implementation MenuScene

@synthesize menu;

+(id) scene{
	CCScene *scene = [CCScene node];
	MenuScene *layer = [MenuScene node];
	[scene addChild:layer];
	return scene;
}

-(id) init{
	
	if ((self=[super init])) {
		
		CGSize screenSize = [CCDirector sharedDirector].winSize;
		
		[[SimpleAudioEngine sharedEngine] playBackgroundMusic:@"Shoetaken_Intro.aif"];
		
		CCSprite *background = [CCSprite spriteWithFile:@"SpaceBackground.gif"];
		background.anchorPoint = CGPointMake(0, 0);
		[self addChild:background];
		
		CCSprite *spaceBaby = [CCSprite spriteWithFile:@"SpaceBaby.gif"];
		spaceBaby.position = ccp(350, -260);
		[self addChild:spaceBaby];
		
		id a1 = [CCMoveBy actionWithDuration:1.4f position:ccp(0, 325)];
		id a2 = [CCCallFunc	actionWithTarget:self selector:@selector(showTitle)];
		id seq = [CCSequence actions:a1, a2, nil];
		[spaceBaby runAction:seq];
		
		
		[CCMenuItemFont setFontSize:20];
		[CCMenuItemFont setFontName:@"kongtext"];
		
		CCMenuItem *startGame = [CCMenuItemFont itemFromString:@"Start Game"
														target:self
													  selector:@selector(startGame:)];

		//CCMenuItem *showScores = [CCMenuItemFont itemFromString:@"High Scores"
		//												target:self
		//											  selector:@selector(showScores:)];
		
		CCMenuItem *showAbout = [CCMenuItemFont itemFromString:@"About"
														target:self
													  selector:@selector(showAbout:)];
		
		
		//menu = [CCMenu menuWithItems:startGame, showScores, showAbout, nil];
		menu = [CCMenu menuWithItems:startGame, showAbout, nil];
		[menu alignItemsVertically];
		menu.position = CGPointMake(((screenSize.width/2)/2)+10, screenSize.height/2);
		
		[self addChild:menu];
		
	}
	return self;
}

-(void)showTitle {
	CCSprite *blackBar = [CCSprite spriteWithFile:@"BlackBar.gif"];
	blackBar.position = ccp(240, 360);
	blackBar.opacity = 175;
	[self addChild:blackBar];
	[blackBar runAction:[CCMoveBy actionWithDuration:0.2f position:ccp(0, -100)]];
	
	float version = [[[UIDevice currentDevice] systemVersion] floatValue];
	if (version >= 4.0) {
		CCSpriteSheet *logoSpriteSheet = [CCSpriteSheet spriteSheetWithFile:@"BabyFighterLogo2.gif"];
		CCSprite *logo = [[CCSprite alloc] init];
		logo.position = ccp(145, 265);
		[logo setTexture:logoSpriteSheet.texture];
		[logo setTextureRect:CGRectMake(0, 0, 1, 9)];
		[logo setSpriteSheet:logoSpriteSheet];
		
		CCAnimation *animation = [CCAnimation animationWithName:@"logobuzz" delay:0.1f];
		for (int i=0; i < 6; i++) {
			CCSpriteFrame *frame = [CCSpriteFrame frameWithTexture:logoSpriteSheet.texture rect:CGRectMake(i*300, 0, 300, 77) offset:ccp(0,0)];
			[animation addFrame:frame];
		}
		
		CCAnimate *animationAction = [CCAnimate actionWithAnimation:animation restoreOriginalFrame:YES];
		[logo runAction:[CCRepeatForever actionWithAction:animationAction]];
		
		[self addChild:logo];		
		
	} else {
		CCSprite *logo = [CCSprite spriteWithFile:@"BabyFighterLogo.gif"];
		logo.position = ccp(145, 265);
		[self addChild:logo];
	}

	
}

-(void)startGame:(id)sender {
	CCLOG(@"Gettin ready to kill some babies....");
	[[SimpleAudioEngine sharedEngine] stopBackgroundMusic];
	[[SimpleAudioEngine sharedEngine] playEffect:@"Shoetaken_Blip1.aif"];
	[[CCDirector sharedDirector] replaceScene:[FightScene scene]];
}

-(void)showScores:(id)sender{
	[[CCDirector sharedDirector] replaceScene:[CCSlideInRTransition transitionWithDuration:0.5 scene:[HighScoreScene scene]]];
}

-(void)showAbout:(id)sender{
	[[CCDirector sharedDirector] replaceScene:[CCSlideInLTransition transitionWithDuration:0.5 scene:[AboutScene scene]]];
}

-(void)dealloc {
	//[menu dealloc];
	[[CCTextureCache sharedTextureCache] removeUnusedTextures];	
	[super dealloc];
}

@end
