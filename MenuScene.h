//
//  MenuScene.h
//  Fighter
//
//  Created by Mel Gray on 8/11/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "cocos2d.h"
#import "SimpleAudioEngine.h"
#import "HighScoreScene.h"

@interface MenuScene : CCLayer {
	CCMenu *menu;
}

@property (nonatomic, retain) CCMenu *menu;


+(id) scene;
-(id) init;
-(void)dealloc;

@end
