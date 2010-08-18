//
//  HelloWorldScene.h
//  Fighter
//
//  Created by Mel Gray on 7/7/10.
//  Copyright Clever Collie, LLC 2010. All rights reserved.
//


// When you import this file, you import all the cocos2d classes
#import "cocos2d.h"
#import "Box2D.h"
#import "GLES-Render.h"

#import "Fighter.h"
#import "Baby.h"
#import "ContactWatcher.h"

// HelloWorld Layer
@interface FightScene : CCLayer
{

	CCSprite *clouds;
	
	CCLabel *scoreLabel;
	CCLabel *healthLabel;

	b2World* world;
	GLESDebugDraw *m_debugDraw;
	
	Fighter *fighter;
	b2FixtureDef fighterFixture;
	
	ContactWatcher *contactWatcher;
		
	int babycount;
	int killed_babies;
	
}

@property (nonatomic, retain) Fighter *fighter;
@property (nonatomic, readwrite) int killed_babies;

-(void) throwABaby;

// returns a Scene that contains the HelloWorld as the only child
+(id) scene;
-(id) init;

// adds a new sprite at a given coordinate
//-(void) addNewSpriteWithCoords:(CGPoint)p;
-(void) createCharacterFrom:(NSString *)class_name withCoords:(CGPoint)coords;

@end
