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
@synthesize density;
@synthesize friction;
@synthesize health;
@synthesize isAttacking;
@synthesize isActionRunning;
@synthesize isMovementActionRunning;
@synthesize currentAction;

-(id)init {

	if ((self=[super init])) {
		actions = [[NSMutableDictionary alloc] init];
		[self loadAnimations];

		density = 1.0f;
		friction = 0.3f;
		
	}
	
	return self;
}

#pragma mark -
#pragma mark Sprite / Animation helpers

// FIXME: Going about this the wrong way.
//        Everytime a new object is initialized we're creating a seperate animation object per instance
//        This gets very expensive after initializing lots of characters.
//        Instead there should be a scene delegate that has a dictionary which holds all loaded animations
-(void)loadAnimations {

	// Get the bundle path for resources based on class name (ie, Resources/Character/Fighter
	NSString *path = [[NSString alloc] initWithFormat:@"Character/%@", NSStringFromClass([self class])];
	
	NSBundle *characterBundle = [NSBundle mainBundle];
	NSArray* mySprites = [characterBundle pathsForResourcesOfType:@"gif" inDirectory:path];
	
	NSString *actionName;
	int rows, columns, width, height;

	// Iterate over each gif found in the resources bundle for the particular class
	for (NSString *filename in mySprites) {
		filename = [[filename componentsSeparatedByString:@"/"] lastObject];
		NSLog(@"%@", filename);
	
		// Spritesheets have a file name convention
		// Rather than parse the image to figure out how big it is, how many cells it holds, etc
		// we name files things like 'actionname.1.5.30.100.gif'
		//
		// The first section is what the animation action will be named
		// The second is the number of rows
		// The third is the number of columns or cells per row
		// The fourth is the height of the image
		// The fifth is the width of the image
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
		// FIXME: We're not taking rows into account just yet.
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


-(void)runActionForever:(NSString *)actionName {
	CCAnimation *animationAction = [actions objectForKey:actionName];
	CCRepeatForever *repeat = [CCRepeatForever actionWithAction:animationAction];
	[self stopAllActions];
	[self runAction:repeat];
	self.isAttacking = NO;
	self.isActionRunning = NO;
}

-(void)runDefaultActionForever {
	[self runActionForever:@"default"];
}

-(void)actionDone {
	isActionRunning = NO;
	if (currentAction == @"back" || currentAction == @"forward") {
		[self runAction:currentAction];
	} else {
		[self runDefaultActionForever];
	}
}

-(void)click{
	self.isAttacking = YES;
	isActionRunning = NO;
	
	if (arc4random() % 2) {
		[self runActionWithName:@"click"];
	} else {
		[self runActionWithName:@"punch"];
	}
}

-(void)runActionWithName:(NSString *)actionName {
	CCAnimation *animationAction = [actions objectForKey:actionName];
	id actionDone = [CCCallFunc actionWithTarget:self selector:@selector(actionDone)];
	
	currentAction = actionName;
	
	if(isActionRunning == NO){
	  isActionRunning = YES;
	  [self stopAllActions];
	  [self runAction:[CCSequence actions:animationAction, actionDone, nil]];
	}
	
}


#pragma mark -
#pragma mark Physics

#define PTM_RATIO 32

// FIXME: Don't think this should be here.
// We're creating too many extra objects.
// Should probably replace with a struct that box2d can access from the scene
-(void)addToBox2d {
	/*
	 float shWidth = [self contentSize].width/PTM_RATIO;
	 float shHeight = [self contentSize].height/PTM_RATIO;
	 
	 body.type = b2_dynamicBody;
	 body.userData = self;
		
	 polygonShape.SetAsBox(shWidth/2, shHeight/2);
	 
	 fixtureDef.shape = &polygonShape;	
	 fixtureDef.density = 1.0f;
	 fixtureDef.friction = 0.3f;
	 */
}

#pragma mark -
#pragma mark Cleanup code

-(void)dealloc {
	[super dealloc];	
}

@end
