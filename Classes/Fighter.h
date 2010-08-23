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
	float accelX;
	float accelY;
}

@property (nonatomic, readwrite) float accelX;
@property (nonatomic, readwrite) float accelY;

@end
