//
//  Fighter.mm
//  Fighter
//
//  Created by Mel Gray on 7/8/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "Fighter.h"


@implementation Fighter

@synthesize nextPosXCoord;

-(id)init {

	if ((self=[super init])) {
		density = 10.0f;
		friction = 4.0f;
		health   = 100;
		isAttacking = NO;
	}
	return self;
}


@end
