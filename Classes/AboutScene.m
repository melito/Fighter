//
//  AboutScene.m
//  Fighter
//
//  Created by Mel Gray on 9/22/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "AboutScene.h"
#import "MenuScene.h"

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
		
		CCSprite *hsLogo = [CCSprite spriteWithFile:@"AboutLogo.gif"];
		hsLogo.position = ccp(240, 260);
		[self addChild:hsLogo z:3];
		
		CCMenuItem *backButton = [CCMenuItemImage itemFromNormalImage:@"ForwardButton.gif" selectedImage:@"ForwardButton.gif" target:self selector:@selector(goBackToMainMenu:)];
		CCMenu *menu = [CCMenu menuWithItems:backButton, nil];
		[menu alignItemsVertically];
		menu.position = ccp(440, 20);
		[self addChild:menu];
		
		CCLabel *disclaimer = [CCLabel labelWithString:@"No babies were harmed making this game." fontName:@"kongtext" fontSize:12];
		disclaimer.position = CGPointMake(242, 200);
		[self addChild:disclaimer];
		
		CCLabel *unless = [CCLabel labelWithString:@"Unless you are not finding this funny." fontName:@"kongtext" fontSize:12];
		unless.position = CGPointMake(242, 184);
		[self addChild:unless];

		CCLabel *feelings = [CCLabel labelWithString:@"Then your feelings probably were." fontName:@"kongtext" fontSize:12];
		feelings.position = CGPointMake(242, 168);
		[self addChild:feelings];
		
	
		CCLabel *everything = [CCLabel labelWithString:@"Concept, code, development:" fontName:@"kongtext" fontSize:12];
		everything.position = CGPointMake(242, 136);
		[self addChild:everything];
		
		CCLabel *cleverCollie = [CCLabel labelWithString:@"Clever Collie, LLC" fontName:@"kongtext" fontSize:13];
		cleverCollie.position = CGPointMake(242, 120);
		[self addChild:cleverCollie];
		
		CCLabel *ccWeb = [CCLabel labelWithString:@"www.clevercollie.com" fontName:@"kongtext" fontSize:10];
		ccWeb.position = CGPointMake(242, 104);
		[self addChild:ccWeb];
		
		
		
		CCLabel *music = [CCLabel labelWithString:@"Music & Sound Effects:" fontName:@"kongtext" fontSize:12];
		music.position = CGPointMake(242, 56);
		[self addChild:music];
		
		CCLabel *deprivty = [CCLabel labelWithString:@"Deprivty" fontName:@"kongtext" fontSize:13];
		deprivty.position = CGPointMake(242, 40);
		[self addChild:deprivty];
		
		CCLabel *toometal = [CCLabel labelWithString:@"Too metal for the web" fontName:@"kongtext" fontSize:10];
		toometal.position = CGPointMake(242, 24);
		[self addChild:toometal];
		
		
		
		
		
		// Native Apple UITextView.  Don't *THINK* I'll be needing this....yet.
		//UITextView *textView = [[UITextView alloc] initWithFrame:CGRectMake(0,0, 150,150)];
		//textView.backgroundColor = [UIColor clearColor];
		//textView.text = @"I am First enemy";
		//[textView setEditable:NO]; 
		//textView.transform = CGAffineTransformMakeRotation(CC_DEGREES_TO_RADIANS( 90.0f ));
		//[[[CCDirector sharedDirector]openGLView]addSubview:textView];  
		
	}
	return self;
}

-(void)goBackToMainMenu:(id)sender {
	[[CCDirector sharedDirector] replaceScene:[CCSlideInRTransition transitionWithDuration:0.5 scene:[MenuScene scene]]];
}

@end
