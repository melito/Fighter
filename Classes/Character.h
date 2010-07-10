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
	
	b2BodyDef body;
	b2PolygonShape polygonShape;
	b2FixtureDef fixtureDef;
	
}

@property (nonatomic, retain) NSMutableDictionary *actions;
@property (nonatomic, readonly) b2BodyDef body;
@property (nonatomic, readonly) b2PolygonShape polygonShape;
@property (nonatomic, readonly) b2FixtureDef fixtureDef;

-(void)loadAnimations;
-(void)createAnimationNamed:(NSString *)action_name 
				withColumns:(int)num_columns 
					andRows:(int)num_rows 
			   withFileName:(NSString *)filename
					  width:(int)_width
					 height:(int)_height;

-(void)runActionWithName:(NSString *)actionName;
-(void)runDefaultActionForever;

@end
