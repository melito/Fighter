//
//  AboutScene.m
//  Fighter
//
//  Created by Mel Gray on 9/22/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "AboutScene.h"


@implementation AboutScene

+(id) scene{
	CCScene *scene = [CCScene node];
	AboutScene *layer = [AboutScene node];
	[scene addChild:layer];
	return scene;
}

-(id) init{
	
	if ((self=[super init])) {
		
	}
	return self;
}


@end
