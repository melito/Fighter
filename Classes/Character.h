//
//  Character.h
//  Fighter
//
//  Created by Mel Gray on 7/8/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "Box2D.h"

@interface Character : CCSprite {
	NSMutableDictionary *actions;
	
	float density;
	float friction;
	int health;
	
	BOOL isAttacking;
	BOOL isActionRunning;
	BOOL isMovementActionRunning;
	BOOL isHurting;

	NSString *currentAction;

}

@property (nonatomic, retain) NSMutableDictionary *actions;
@property (nonatomic, readonly) float density;
@property (nonatomic, readonly) float friction;
@property (nonatomic, readwrite) int health;
@property (nonatomic, readwrite) BOOL isAttacking;
@property (nonatomic, readwrite) BOOL isActionRunning;
@property (nonatomic, readwrite) BOOL isMovementActionRunning;
@property (nonatomic, readwrite) BOOL isHurting;

@property (nonatomic, retain) NSString *currentAction;

-(void)loadAnimations;
-(void)createAnimationNamed:(NSString *)action_name 
				withColumns:(int)num_columns 
					andRows:(int)num_rows 
			   withFileName:(NSString *)filename
					  width:(int)_width
					 height:(int)_height;

-(void)runActionWithName:(NSString *)actionName;
-(void)runDefaultActionForever;
-(void)runActionForever:(NSString *)actionName;


-(void)click;
@end
