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
	
	if (self=[super init]) {
		density = 10.5f;
		friction = 3.1f;
	}
	return self;
}


@end
