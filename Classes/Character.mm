//
//  Character.mm
//  Fighter
//
//  Created by Mel Gray on 7/8/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "Character.h"


@implementation Character

@synthesize actions;
@synthesize body;
@synthesize polygonShape;
@synthesize fixtureDef;

-(id)init {

	if ((self=[super init])) {
		actions = [[NSMutableDictionary alloc] init];
		[self loadAnimations];
		[self addToBox2d];
	}
	
	return self;
}

#pragma mark -
#pragma mark Sprite / Animation helpers

-(void)loadAnimations {

	NSString *path = [[NSString alloc] initWithFormat:@"Character/%@", NSStringFromClass([self class])];
	
	NSBundle *characterBundle = [NSBundle mainBundle];
	NSArray* mySprites = [characterBundle pathsForResourcesOfType:@"gif" inDirectory:path];
	
	NSString *actionName;
	int rows, columns, width, height;
	
	for (NSString *filename in mySprites) {
		filename = [[filename componentsSeparatedByString:@"/"] lastObject];
		NSLog(@"%@", filename);
	
		NSArray *fileStructure = [filename componentsSeparatedByString:@"."];
		if ([fileStructure count] > 5) {
			
			width   = [[fileStructure objectAtIndex:[fileStructure count]-2] intValue];
			height  = [[fileStructure objectAtIndex:[fileStructure count]-3] intValue];
			columns = [[fileStructure objectAtIndex:[fileStructure count]-4] intValue];
			rows    = [[fileStructure objectAtIndex:[fileStructure count]-5] intValue];
			actionName = [fileStructure objectAtIndex:[fileStructure count]-6 ];

			NSLog(@"Action name: %@", actionName);
			NSLog(@"Columns: %i Rows: %i", columns, rows);
			NSLog(@"Width: %i Height: %i", width, height);
			
			[self createAnimationNamed:actionName withColumns:columns andRows:rows withFileName:filename width:width height:height];
		}
			
	}
				
}

-(void)createAnimationNamed:(NSString *)action_name 
				withColumns:(int)num_columns 
					andRows:(int)num_rows 
			   withFileName:(NSString *)filename 
					  width:(int)_width
					 height:(int)_height
{
	CCSpriteSheet *spriteSheet = [CCSpriteSheet spriteSheetWithFile:filename];
	
	// essentially this is `initWithTexture`
	[self setTexture:spriteSheet.texture];
	[self setTextureRect:CGRectMake(0, 0, _width/num_columns, _height/num_rows)];
	
	self.spriteSheet = spriteSheet;
	CCAnimation *animation = [CCAnimation animationWithName:action_name delay:0.1f];
	
	for(int i=0; i < num_columns; i++){
		CCSpriteFrame *frame = [CCSpriteFrame frameWithTexture:spriteSheet.texture rect:CGRectMake(i*(_width/num_columns), 0, _width/num_columns, _height/num_rows) offset:ccp(0,0)];
		[animation addFrame:frame];
	}
	
	CCAnimate *animationAction = [CCAnimate actionWithAnimation:animation];
	
	[actions setValue:animationAction forKey:action_name];
	NSLog(@"animation: '%@' for '%@' registered", action_name, [self class]);
	
	if ([action_name isEqualToString:@"default"]) {
		[self runDefaultActionForever];
	}
	
}

-(void)runDefaultActionForever {
	CCAnimation *defaultAction = [actions objectForKey:@"default"];
	CCRepeatForever *repeat = [CCRepeatForever actionWithAction:defaultAction];
	[self runAction:repeat];
}

-(void)click{
	[self runActionWithName:@"click"];
}

-(void)runActionWithName:(NSString *)actionName {
	CCAnimation *animationAction = [actions objectForKey:actionName];
	id actionDone = [CCCallFunc actionWithTarget:self selector:@selector(runDefaultActionForever)];
	
	[self stopAllActions];
	[self runAction:[CCSequence actions:animationAction, actionDone, nil]];
}


#pragma mark -
#pragma mark Physics

#define PTM_RATIO 32

-(void)addToBox2d {
	
	 float shWidth = [self contentSize].width/PTM_RATIO;
	 float shHeight = [self contentSize].height/PTM_RATIO;
	 
	 body.type = b2_dynamicBody;
	 body.userData = self;
	
	 //b2Body *body = world->CreateBody(&heroDude);
	
	 polygonShape.SetAsBox(shWidth/2, shHeight/2);
	 
	 fixtureDef.shape = &polygonShape;	
	 fixtureDef.density = 1.0f;
	 fixtureDef.friction = 0.3f;
	 //body->CreateFixture(&fighterFixture);
}

#pragma mark -
#pragma mark Cleanup code

-(void)dealloc {
	[super dealloc];	
}

@end
