//
//  Baby.mm
//  Fighter
//
//  Created by Mel Gray on 7/9/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "Baby.h"

@implementation Baby


-(id)init {
	
	if ((self=[super init])) {
		density = 0.5f;
		friction = 0.0f;
		health = 5;
		isAttacking = YES;
	}
	return self;
}


@end
