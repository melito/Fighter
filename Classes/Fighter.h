//
//  Fighter.h
//  Fighter
//
//  Created by Mel Gray on 7/8/10.
//  Copyright 2010 Clever Collie, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"

@interface Fighter : Character {
	float nextPosXCoord;
}

@property (nonatomic, readwrite) float nextPosXCoord;

@end
