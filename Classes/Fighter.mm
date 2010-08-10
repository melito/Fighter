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
		density = 10.0f;
		friction = 2.0f;
		health   = 100;
	}
	return self;
}


@end
