//
//  CleverCollieScene.h
//  Fighter
//
//  Created by Mel Gray on 8/11/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "cocos2d.h"
#import "SimpleAudioEngine.h"

#import "MenuScene.h"

@interface CleverCollieScene : CCLayer {
	BOOL sceneLoading;
}

@property (nonatomic, readwrite) BOOL sceneLoading;

+(id) scene;
-(id) init;
-(void)dealloc;

-(void) pauseBeforeLoadingMenu:(ccTime)dt;

@end
