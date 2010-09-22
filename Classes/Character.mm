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
@synthesize currentAction;
@synthesize facing;

@synthesize density;
@synthesize friction;
@synthesize health;

@synthesize isAttacking;
@synthesize isActionRunning;
@synthesize isHurting;
@synthesize isDead;

-(id)init {

	if ((self=[super init])) {
		actions = [[NSMutableDictionary alloc] init];
		[self loadAnimations];

		density = 1.0f;
		friction = 0.3f;
		
		isDead = NO;
		
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
	CCLOG(@"%@", path);
	
	NSBundle *characterBundle = [NSBundle mainBundle];
	NSArray* mySprites = [characterBundle pathsForResourcesOfType:@"gif" inDirectory:path];
	CCLOG(@"SPRITES: %@", mySprites);	
	
	NSString *actionName;
	int rows, columns, width, height;

	// Iterate over each gif found in the resources bundle for the particular class
	for (NSString *filename in mySprites) {

		filename = [[filename componentsSeparatedByString:@"/"] lastObject];
		CCLOG(@"%@", filename);
	
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

			CCLOG(@"Action name: %@", actionName);
			CCLOG(@"Columns: %i Rows: %i", columns, rows);
			CCLOG(@"Width: %i Height: %i", width, height);
			
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
	
	CCAnimate *animationAction = [CCAnimate actionWithAnimation:animation restoreOriginalFrame:NO];
	
	[actions setValue:animationAction forKey:action_name];
	CCLOG(@"animation: '%@' for '%@' registered", action_name, [self class]);
	
	if ([action_name isEqualToString:@"default"]) {
		[self runDefaultActionForever];
	}
	
}

-(void)runActionForever:(NSString *)actionName {
	CCAnimate *animationAction = [actions objectForKey:actionName];
	CCRepeatForever *repeat = [CCRepeatForever actionWithAction:animationAction];
	
	[self stopAllActions];
	[self runAction:repeat];
	
	currentAction = actionName;	
}

-(void)runDefaultActionForever {
	if (currentAction != @"defaultleft" && currentAction != @"default") {
		if (facing == @"left") {
			[self runActionForever:@"defaultleft"];
		} else {
			[self runActionForever:@"default"];		
		}
	}
}

-(void)actionDone {
	isAttacking = NO;
	isHurting = NO;
	isActionRunning = NO;
	[self runDefaultActionForever];
}

-(void)runActionWithName:(NSString *)actionName {
	if(isActionRunning == NO){
		currentAction = actionName;		
		isActionRunning = YES;

		CCAnimate *animationAction = [actions objectForKey:currentAction];
		id actionDone = [CCCallFunc actionWithTarget:self selector:@selector(actionDone)];
		id seq = [CCSequence actions:animationAction, actionDone, nil];
	
		[self stopAllActions];
		[self runAction:seq];
	}	
}

-(void)click{
	isAttacking = YES;
	isActionRunning = NO;
	if (facing == @"left") {
		[self runActionWithName:@"kickleft"];
	} else {
		[self runActionWithName:@"click"];
	}
	
}

-(void)gotHit{
	isAttacking = NO;
	isHurting = YES;
	isActionRunning = YES;
	
	
	NSString *hitDirection;
	if(self.facing == @"right"){
		hitDirection = [[NSString alloc] initWithString:@"hitright"];
	} else {
		hitDirection = [[NSString alloc] initWithString:@"hitleft"];
	}
	
	id hitAction  = [actions objectForKey:hitDirection];
	//id blinkAction = [CCBlink actionWithDuration:1.5 blinks:7];
	id actionDone = [CCCallFunc actionWithTarget:self selector:@selector(actionDone)];
	
	[self stopAllActions];
	[self runAction:[CCSequence actions:hitAction, actionDone, nil]];
}

#pragma mark -
#pragma mark Cleanup code

-(void)dealloc {
	[super dealloc];	
}

@end
