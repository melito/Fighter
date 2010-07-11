//
//  Fighter.mm
//  Fighter
//
//  Created by Mel Gray on 7/8/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import "Fighter.h"


@implementation Fighter


-(id)init {

	if (self=[super init]) {
		density = 0.0f;
		friction = 0.1f;
	}
	return self;
}


@end
