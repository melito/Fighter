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
		isActionRunning = NO;
	}
	return self;
}


@end

/*

 default (right)
 //row 1, col 1
 int num = 31;
 b2Vec2 verts[] = {
 b2Vec2(-24.5f / PTM_RATIO, -17.9f / PTM_RATIO),
 b2Vec2(-24.7f / PTM_RATIO, -12.3f / PTM_RATIO),
 b2Vec2(-21.1f / PTM_RATIO, -10.3f / PTM_RATIO),
 b2Vec2(-16.9f / PTM_RATIO, -12.3f / PTM_RATIO),
 b2Vec2(-10.0f / PTM_RATIO, -5.4f / PTM_RATIO),
 b2Vec2(-2.2f / PTM_RATIO, -7.9f / PTM_RATIO),
 b2Vec2(5.2f / PTM_RATIO, -6.1f / PTM_RATIO),
 b2Vec2(-1.7f / PTM_RATIO, 0.8f / PTM_RATIO),
 b2Vec2(-2.8f / PTM_RATIO, 10.5f / PTM_RATIO),
 b2Vec2(7.1f / PTM_RATIO, 19.2f / PTM_RATIO),
 b2Vec2(8.6f / PTM_RATIO, 20.9f / PTM_RATIO),
 b2Vec2(10.5f / PTM_RATIO, 21.7f / PTM_RATIO),
 b2Vec2(12.1f / PTM_RATIO, 18.3f / PTM_RATIO),
 b2Vec2(15.6f / PTM_RATIO, 14.9f / PTM_RATIO),
 b2Vec2(20.0f / PTM_RATIO, 11.4f / PTM_RATIO),
 b2Vec2(21.1f / PTM_RATIO, 3.4f / PTM_RATIO),
 b2Vec2(23.6f / PTM_RATIO, 0.8f / PTM_RATIO),
 b2Vec2(22.3f / PTM_RATIO, -4.3f / PTM_RATIO),
 b2Vec2(19.3f / PTM_RATIO, -7.0f / PTM_RATIO),
 b2Vec2(13.0f / PTM_RATIO, -7.7f / PTM_RATIO),
 b2Vec2(14.0f / PTM_RATIO, -10.0f / PTM_RATIO),
 b2Vec2(13.0f / PTM_RATIO, -14.2f / PTM_RATIO),
 b2Vec2(15.6f / PTM_RATIO, -17.1f / PTM_RATIO),
 b2Vec2(19.5f / PTM_RATIO, -15.8f / PTM_RATIO),
 b2Vec2(21.3f / PTM_RATIO, -19.0f / PTM_RATIO),
 b2Vec2(20.2f / PTM_RATIO, -21.1f / PTM_RATIO),
 b2Vec2(4.1f / PTM_RATIO, -21.1f / PTM_RATIO),
 b2Vec2(-13.0f / PTM_RATIO, -20.9f / PTM_RATIO),
 b2Vec2(-18.1f / PTM_RATIO, -19.5f / PTM_RATIO),
 b2Vec2(-18.0f / PTM_RATIO, -21.1f / PTM_RATIO),
 b2Vec2(-25.0f / PTM_RATIO, -17.8f / PTM_RATIO)
 };
 
 //row 1, col 2
 int num = 25;
 b2Vec2 verts[] = {
 b2Vec2(-24.6f / PTM_RATIO, -14.9f / PTM_RATIO),
 b2Vec2(-20.0f / PTM_RATIO, -9.5f / PTM_RATIO),
 b2Vec2(-16.1f / PTM_RATIO, -12.5f / PTM_RATIO),
 b2Vec2(-9.2f / PTM_RATIO, -5.6f / PTM_RATIO),
 b2Vec2(-2.0f / PTM_RATIO, -8.4f / PTM_RATIO),
 b2Vec2(5.3f / PTM_RATIO, -6.5f / PTM_RATIO),
 b2Vec2(-1.6f / PTM_RATIO, 0.3f / PTM_RATIO),
 b2Vec2(-2.0f / PTM_RATIO, 10.5f / PTM_RATIO),
 b2Vec2(9.8f / PTM_RATIO, 21.5f / PTM_RATIO),
 b2Vec2(13.6f / PTM_RATIO, 17.1f / PTM_RATIO),
 b2Vec2(21.0f / PTM_RATIO, 10.3f / PTM_RATIO),
 b2Vec2(21.7f / PTM_RATIO, 2.4f / PTM_RATIO),
 b2Vec2(24.7f / PTM_RATIO, 0.8f / PTM_RATIO),
 b2Vec2(21.5f / PTM_RATIO, -6.3f / PTM_RATIO),
 b2Vec2(14.1f / PTM_RATIO, -7.7f / PTM_RATIO),
 b2Vec2(16.6f / PTM_RATIO, -14.6f / PTM_RATIO),
 b2Vec2(22.6f / PTM_RATIO, -11.2f / PTM_RATIO),
 b2Vec2(24.3f / PTM_RATIO, -15.8f / PTM_RATIO),
 b2Vec2(14.3f / PTM_RATIO, -19.9f / PTM_RATIO),
 b2Vec2(12.5f / PTM_RATIO, -21.1f / PTM_RATIO),
 b2Vec2(-15.3f / PTM_RATIO, -21.1f / PTM_RATIO),
 b2Vec2(-18.6f / PTM_RATIO, -20.8f / PTM_RATIO),
 b2Vec2(-20.9f / PTM_RATIO, -14.8f / PTM_RATIO),
 b2Vec2(-23.6f / PTM_RATIO, -16.9f / PTM_RATIO),
 b2Vec2(-25.0f / PTM_RATIO, -14.9f / PTM_RATIO)
 };
 
 //row 1, col 3
 int num = 28;
 b2Vec2 verts[] = {
 b2Vec2(-25.8f / PTM_RATIO, -14.6f / PTM_RATIO),
 b2Vec2(-21.2f / PTM_RATIO, -8.2f / PTM_RATIO),
 b2Vec2(-17.0f / PTM_RATIO, -11.4f / PTM_RATIO),
 b2Vec2(-13.8f / PTM_RATIO, -11.2f / PTM_RATIO),
 b2Vec2(-8.5f / PTM_RATIO, -5.6f / PTM_RATIO),
 b2Vec2(-1.4f / PTM_RATIO, -8.0f / PTM_RATIO),
 b2Vec2(5.8f / PTM_RATIO, -7.0f / PTM_RATIO),
 b2Vec2(-2.6f / PTM_RATIO, -0.1f / PTM_RATIO),
 b2Vec2(-3.5f / PTM_RATIO, 8.6f / PTM_RATIO),
 b2Vec2(5.5f / PTM_RATIO, 20.2f / PTM_RATIO),
 b2Vec2(8.3f / PTM_RATIO, 16.9f / PTM_RATIO),
 b2Vec2(19.3f / PTM_RATIO, 10.5f / PTM_RATIO),
 b2Vec2(19.8f / PTM_RATIO, 4.0f / PTM_RATIO),
 b2Vec2(22.6f / PTM_RATIO, 3.3f / PTM_RATIO),
 b2Vec2(22.3f / PTM_RATIO, -2.2f / PTM_RATIO),
 b2Vec2(18.0f / PTM_RATIO, -6.3f / PTM_RATIO),
 b2Vec2(13.3f / PTM_RATIO, -6.6f / PTM_RATIO),
 b2Vec2(14.7f / PTM_RATIO, -11.9f / PTM_RATIO),
 b2Vec2(18.2f / PTM_RATIO, -16.2f / PTM_RATIO),
 b2Vec2(21.6f / PTM_RATIO, -12.5f / PTM_RATIO),
 b2Vec2(26.3f / PTM_RATIO, -13.9f / PTM_RATIO),
 b2Vec2(24.6f / PTM_RATIO, -17.6f / PTM_RATIO),
 b2Vec2(21.9f / PTM_RATIO, -21.1f / PTM_RATIO),
 b2Vec2(-15.0f / PTM_RATIO, -20.9f / PTM_RATIO),
 b2Vec2(-20.3f / PTM_RATIO, -20.4f / PTM_RATIO),
 b2Vec2(-22.1f / PTM_RATIO, -14.4f / PTM_RATIO),
 b2Vec2(-24.2f / PTM_RATIO, -16.7f / PTM_RATIO),
 b2Vec2(-26.5f / PTM_RATIO, -14.9f / PTM_RATIO)
 };
 
 //row 1, col 4
 int num = 33;
 b2Vec2 verts[] = {
 b2Vec2(-22.4f / PTM_RATIO, -10.7f / PTM_RATIO),
 b2Vec2(-16.9f / PTM_RATIO, -7.1f / PTM_RATIO),
 b2Vec2(-12.6f / PTM_RATIO, -10.9f / PTM_RATIO),
 b2Vec2(-8.4f / PTM_RATIO, -5.2f / PTM_RATIO),
 b2Vec2(0.6f / PTM_RATIO, -7.1f / PTM_RATIO),
 b2Vec2(6.3f / PTM_RATIO, -6.1f / PTM_RATIO),
 b2Vec2(0.0f / PTM_RATIO, 0.4f / PTM_RATIO),
 b2Vec2(-0.4f / PTM_RATIO, 9.7f / PTM_RATIO),
 b2Vec2(11.9f / PTM_RATIO, 21.0f / PTM_RATIO),
 b2Vec2(14.1f / PTM_RATIO, 17.2f / PTM_RATIO),
 b2Vec2(22.5f / PTM_RATIO, 9.0f / PTM_RATIO),
 b2Vec2(23.1f / PTM_RATIO, 2.5f / PTM_RATIO),
 b2Vec2(26.0f / PTM_RATIO, 0.5f / PTM_RATIO),
 b2Vec2(25.4f / PTM_RATIO, -5.0f / PTM_RATIO),
 b2Vec2(20.1f / PTM_RATIO, -8.7f / PTM_RATIO),
 b2Vec2(16.4f / PTM_RATIO, -9.0f / PTM_RATIO),
 b2Vec2(15.9f / PTM_RATIO, -11.9f / PTM_RATIO),
 b2Vec2(13.3f / PTM_RATIO, -14.0f / PTM_RATIO),
 b2Vec2(18.3f / PTM_RATIO, -14.9f / PTM_RATIO),
 b2Vec2(21.0f / PTM_RATIO, -12.2f / PTM_RATIO),
 b2Vec2(24.6f / PTM_RATIO, -14.9f / PTM_RATIO),
 b2Vec2(19.4f / PTM_RATIO, -21.5f / PTM_RATIO),
 b2Vec2(14.0f / PTM_RATIO, -20.7f / PTM_RATIO),
 b2Vec2(6.1f / PTM_RATIO, -19.7f / PTM_RATIO),
 b2Vec2(2.1f / PTM_RATIO, -21.4f / PTM_RATIO),
 b2Vec2(-7.6f / PTM_RATIO, -20.7f / PTM_RATIO),
 b2Vec2(-18.2f / PTM_RATIO, -20.2f / PTM_RATIO),
 b2Vec2(-19.1f / PTM_RATIO, -21.4f / PTM_RATIO),
 b2Vec2(-22.4f / PTM_RATIO, -20.0f / PTM_RATIO),
 b2Vec2(-22.9f / PTM_RATIO, -17.4f / PTM_RATIO),
 b2Vec2(-19.5f / PTM_RATIO, -14.0f / PTM_RATIO),
 b2Vec2(-19.5f / PTM_RATIO, -11.9f / PTM_RATIO),
 b2Vec2(-22.6f / PTM_RATIO, -11.7f / PTM_RATIO)
 };
 
 //row 1, col 5
 int num = 23;
 b2Vec2 verts[] = {
 b2Vec2(-25.0f / PTM_RATIO, -19.4f / PTM_RATIO),
 b2Vec2(-15.1f / PTM_RATIO, -7.0f / PTM_RATIO),
 b2Vec2(-11.6f / PTM_RATIO, -9.9f / PTM_RATIO),
 b2Vec2(-8.5f / PTM_RATIO, -6.0f / PTM_RATIO),
 b2Vec2(0.9f / PTM_RATIO, -7.5f / PTM_RATIO),
 b2Vec2(5.5f / PTM_RATIO, -6.1f / PTM_RATIO),
 b2Vec2(-0.0f / PTM_RATIO, 0.5f / PTM_RATIO),
 b2Vec2(-0.1f / PTM_RATIO, 9.9f / PTM_RATIO),
 b2Vec2(12.2f / PTM_RATIO, 20.7f / PTM_RATIO),
 b2Vec2(14.4f / PTM_RATIO, 17.2f / PTM_RATIO),
 b2Vec2(22.5f / PTM_RATIO, 8.9f / PTM_RATIO),
 b2Vec2(22.7f / PTM_RATIO, 3.0f / PTM_RATIO),
 b2Vec2(26.0f / PTM_RATIO, 0.7f / PTM_RATIO),
 b2Vec2(25.2f / PTM_RATIO, -4.6f / PTM_RATIO),
 b2Vec2(17.9f / PTM_RATIO, -8.7f / PTM_RATIO),
 b2Vec2(16.7f / PTM_RATIO, -13.0f / PTM_RATIO),
 b2Vec2(21.6f / PTM_RATIO, -10.1f / PTM_RATIO),
 b2Vec2(26.1f / PTM_RATIO, -13.0f / PTM_RATIO),
 b2Vec2(20.1f / PTM_RATIO, -18.2f / PTM_RATIO),
 b2Vec2(19.7f / PTM_RATIO, -20.5f / PTM_RATIO),
 b2Vec2(17.1f / PTM_RATIO, -21.4f / PTM_RATIO),
 b2Vec2(-18.8f / PTM_RATIO, -21.1f / PTM_RATIO),
 b2Vec2(-25.8f / PTM_RATIO, -19.9f / PTM_RATIO)
 };
 
 //row 1, col 6
 int num = 25;
 b2Vec2 verts[] = {
 b2Vec2(-23.1f / PTM_RATIO, -13.6f / PTM_RATIO),
 b2Vec2(-20.4f / PTM_RATIO, -9.0f / PTM_RATIO),
 b2Vec2(-15.6f / PTM_RATIO, -11.5f / PTM_RATIO),
 b2Vec2(-9.6f / PTM_RATIO, -6.9f / PTM_RATIO),
 b2Vec2(0.2f / PTM_RATIO, -8.4f / PTM_RATIO),
 b2Vec2(7.6f / PTM_RATIO, -6.1f / PTM_RATIO),
 b2Vec2(2.0f / PTM_RATIO, -0.4f / PTM_RATIO),
 b2Vec2(2.0f / PTM_RATIO, 9.5f / PTM_RATIO),
 b2Vec2(8.0f / PTM_RATIO, 15.7f / PTM_RATIO),
 b2Vec2(16.2f / PTM_RATIO, 20.4f / PTM_RATIO),
 b2Vec2(18.1f / PTM_RATIO, 16.7f / PTM_RATIO),
 b2Vec2(24.4f / PTM_RATIO, 10.1f / PTM_RATIO),
 b2Vec2(24.4f / PTM_RATIO, 0.9f / PTM_RATIO),
 b2Vec2(26.7f / PTM_RATIO, -1.1f / PTM_RATIO),
 b2Vec2(24.4f / PTM_RATIO, -7.7f / PTM_RATIO),
 b2Vec2(16.2f / PTM_RATIO, -9.9f / PTM_RATIO),
 b2Vec2(14.6f / PTM_RATIO, -13.9f / PTM_RATIO),
 b2Vec2(16.9f / PTM_RATIO, -16.4f / PTM_RATIO),
 b2Vec2(21.4f / PTM_RATIO, -13.1f / PTM_RATIO),
 b2Vec2(25.1f / PTM_RATIO, -15.6f / PTM_RATIO),
 b2Vec2(19.7f / PTM_RATIO, -21.4f / PTM_RATIO),
 b2Vec2(-15.8f / PTM_RATIO, -21.4f / PTM_RATIO),
 b2Vec2(-19.3f / PTM_RATIO, -17.5f / PTM_RATIO),
 b2Vec2(-20.9f / PTM_RATIO, -18.9f / PTM_RATIO),
 b2Vec2(-23.9f / PTM_RATIO, -13.0f / PTM_RATIO)
 };
 
 //row 1, col 7
 int num = 27;
 b2Vec2 verts[] = {
 b2Vec2(-24.4f / PTM_RATIO, -14.6f / PTM_RATIO),
 b2Vec2(-21.3f / PTM_RATIO, -10.0f / PTM_RATIO),
 b2Vec2(-16.4f / PTM_RATIO, -11.9f / PTM_RATIO),
 b2Vec2(-10.9f / PTM_RATIO, -5.5f / PTM_RATIO),
 b2Vec2(-2.1f / PTM_RATIO, -7.4f / PTM_RATIO),
 b2Vec2(5.5f / PTM_RATIO, -6.2f / PTM_RATIO),
 b2Vec2(1.1f / PTM_RATIO, -1.5f / PTM_RATIO),
 b2Vec2(1.4f / PTM_RATIO, 9.7f / PTM_RATIO),
 b2Vec2(14.7f / PTM_RATIO, 20.0f / PTM_RATIO),
 b2Vec2(17.2f / PTM_RATIO, 15.1f / PTM_RATIO),
 b2Vec2(23.1f / PTM_RATIO, 8.4f / PTM_RATIO),
 b2Vec2(23.1f / PTM_RATIO, -1.0f / PTM_RATIO),
 b2Vec2(25.1f / PTM_RATIO, -2.7f / PTM_RATIO),
 b2Vec2(20.4f / PTM_RATIO, -10.0f / PTM_RATIO),
 b2Vec2(14.2f / PTM_RATIO, -10.2f / PTM_RATIO),
 b2Vec2(14.4f / PTM_RATIO, -15.5f / PTM_RATIO),
 b2Vec2(19.5f / PTM_RATIO, -16.0f / PTM_RATIO),
 b2Vec2(22.2f / PTM_RATIO, -19.4f / PTM_RATIO),
 b2Vec2(20.6f / PTM_RATIO, -21.4f / PTM_RATIO),
 b2Vec2(10.2f / PTM_RATIO, -21.5f / PTM_RATIO),
 b2Vec2(7.6f / PTM_RATIO, -17.5f / PTM_RATIO),
 b2Vec2(0.2f / PTM_RATIO, -21.5f / PTM_RATIO),
 b2Vec2(-18.0f / PTM_RATIO, -21.4f / PTM_RATIO),
 b2Vec2(-20.8f / PTM_RATIO, -19.1f / PTM_RATIO),
 b2Vec2(-20.5f / PTM_RATIO, -21.2f / PTM_RATIO),
 b2Vec2(-23.5f / PTM_RATIO, -21.2f / PTM_RATIO),
 b2Vec2(-24.1f / PTM_RATIO, -14.5f / PTM_RATIO)
 };
 
 //row 1, col 8
 int num = 26;
 b2Vec2 verts[] = {
 b2Vec2(-27.3f / PTM_RATIO, -20.4f / PTM_RATIO),
 b2Vec2(-27.4f / PTM_RATIO, -15.5f / PTM_RATIO),
 b2Vec2(-19.1f / PTM_RATIO, -8.0f / PTM_RATIO),
 b2Vec2(-16.8f / PTM_RATIO, -11.0f / PTM_RATIO),
 b2Vec2(-12.0f / PTM_RATIO, -4.9f / PTM_RATIO),
 b2Vec2(-4.0f / PTM_RATIO, -7.1f / PTM_RATIO),
 b2Vec2(5.2f / PTM_RATIO, -5.7f / PTM_RATIO),
 b2Vec2(-0.8f / PTM_RATIO, 2.1f / PTM_RATIO),
 b2Vec2(-1.1f / PTM_RATIO, 12.0f / PTM_RATIO),
 b2Vec2(12.1f / PTM_RATIO, 22.5f / PTM_RATIO),
 b2Vec2(14.4f / PTM_RATIO, 18.2f / PTM_RATIO),
 b2Vec2(21.5f / PTM_RATIO, 11.0f / PTM_RATIO),
 b2Vec2(21.5f / PTM_RATIO, 3.7f / PTM_RATIO),
 b2Vec2(23.9f / PTM_RATIO, 2.1f / PTM_RATIO),
 b2Vec2(20.1f / PTM_RATIO, -7.1f / PTM_RATIO),
 b2Vec2(12.9f / PTM_RATIO, -7.0f / PTM_RATIO),
 b2Vec2(12.2f / PTM_RATIO, -16.2f / PTM_RATIO),
 b2Vec2(19.1f / PTM_RATIO, -16.9f / PTM_RATIO),
 b2Vec2(19.2f / PTM_RATIO, -21.2f / PTM_RATIO),
 b2Vec2(4.1f / PTM_RATIO, -21.5f / PTM_RATIO),
 b2Vec2(3.0f / PTM_RATIO, -19.5f / PTM_RATIO),
 b2Vec2(-1.5f / PTM_RATIO, -21.2f / PTM_RATIO),
 b2Vec2(-22.0f / PTM_RATIO, -21.1f / PTM_RATIO),
 b2Vec2(-24.8f / PTM_RATIO, -18.4f / PTM_RATIO),
 b2Vec2(-24.4f / PTM_RATIO, -21.2f / PTM_RATIO),
 b2Vec2(-27.6f / PTM_RATIO, -21.1f / PTM_RATIO)
 };
 
 //////////////////////////////////////////////////////
 
 default (right) (assignment)
 //row 1, col 1
 int num = 31;
 verts[0].Set(-24.5f / PTM_RATIO, -17.9f / PTM_RATIO);
 verts[1].Set(-24.7f / PTM_RATIO, -12.3f / PTM_RATIO);
 verts[2].Set(-21.1f / PTM_RATIO, -10.3f / PTM_RATIO);
 verts[3].Set(-16.9f / PTM_RATIO, -12.3f / PTM_RATIO);
 verts[4].Set(-10.0f / PTM_RATIO, -5.4f / PTM_RATIO);
 verts[5].Set(-2.2f / PTM_RATIO, -7.9f / PTM_RATIO);
 verts[6].Set(5.2f / PTM_RATIO, -6.1f / PTM_RATIO);
 verts[7].Set(-1.7f / PTM_RATIO, 0.8f / PTM_RATIO);
 verts[8].Set(-2.8f / PTM_RATIO, 10.5f / PTM_RATIO);
 verts[9].Set(7.1f / PTM_RATIO, 19.2f / PTM_RATIO);
 verts[10].Set(8.6f / PTM_RATIO, 20.9f / PTM_RATIO);
 verts[11].Set(10.5f / PTM_RATIO, 21.7f / PTM_RATIO);
 verts[12].Set(12.1f / PTM_RATIO, 18.3f / PTM_RATIO);
 verts[13].Set(15.6f / PTM_RATIO, 14.9f / PTM_RATIO);
 verts[14].Set(20.0f / PTM_RATIO, 11.4f / PTM_RATIO);
 verts[15].Set(21.1f / PTM_RATIO, 3.4f / PTM_RATIO);
 verts[16].Set(23.6f / PTM_RATIO, 0.8f / PTM_RATIO);
 verts[17].Set(22.3f / PTM_RATIO, -4.3f / PTM_RATIO);
 verts[18].Set(19.3f / PTM_RATIO, -7.0f / PTM_RATIO);
 verts[19].Set(13.0f / PTM_RATIO, -7.7f / PTM_RATIO);
 verts[20].Set(14.0f / PTM_RATIO, -10.0f / PTM_RATIO);
 verts[21].Set(13.0f / PTM_RATIO, -14.2f / PTM_RATIO);
 verts[22].Set(15.6f / PTM_RATIO, -17.1f / PTM_RATIO);
 verts[23].Set(19.5f / PTM_RATIO, -15.8f / PTM_RATIO);
 verts[24].Set(21.3f / PTM_RATIO, -19.0f / PTM_RATIO);
 verts[25].Set(20.2f / PTM_RATIO, -21.1f / PTM_RATIO);
 verts[26].Set(4.1f / PTM_RATIO, -21.1f / PTM_RATIO);
 verts[27].Set(-13.0f / PTM_RATIO, -20.9f / PTM_RATIO);
 verts[28].Set(-18.1f / PTM_RATIO, -19.5f / PTM_RATIO);
 verts[29].Set(-18.0f / PTM_RATIO, -21.1f / PTM_RATIO);
 verts[30].Set(-25.0f / PTM_RATIO, -17.8f / PTM_RATIO);
 
 //row 1, col 2
 int num = 25;
 verts[0].Set(-24.6f / PTM_RATIO, -14.9f / PTM_RATIO);
 verts[1].Set(-20.0f / PTM_RATIO, -9.5f / PTM_RATIO);
 verts[2].Set(-16.1f / PTM_RATIO, -12.5f / PTM_RATIO);
 verts[3].Set(-9.2f / PTM_RATIO, -5.6f / PTM_RATIO);
 verts[4].Set(-2.0f / PTM_RATIO, -8.4f / PTM_RATIO);
 verts[5].Set(5.3f / PTM_RATIO, -6.5f / PTM_RATIO);
 verts[6].Set(-1.6f / PTM_RATIO, 0.3f / PTM_RATIO);
 verts[7].Set(-2.0f / PTM_RATIO, 10.5f / PTM_RATIO);
 verts[8].Set(9.8f / PTM_RATIO, 21.5f / PTM_RATIO);
 verts[9].Set(13.6f / PTM_RATIO, 17.1f / PTM_RATIO);
 verts[10].Set(21.0f / PTM_RATIO, 10.3f / PTM_RATIO);
 verts[11].Set(21.7f / PTM_RATIO, 2.4f / PTM_RATIO);
 verts[12].Set(24.7f / PTM_RATIO, 0.8f / PTM_RATIO);
 verts[13].Set(21.5f / PTM_RATIO, -6.3f / PTM_RATIO);
 verts[14].Set(14.1f / PTM_RATIO, -7.7f / PTM_RATIO);
 verts[15].Set(16.6f / PTM_RATIO, -14.6f / PTM_RATIO);
 verts[16].Set(22.6f / PTM_RATIO, -11.2f / PTM_RATIO);
 verts[17].Set(24.3f / PTM_RATIO, -15.8f / PTM_RATIO);
 verts[18].Set(14.3f / PTM_RATIO, -19.9f / PTM_RATIO);
 verts[19].Set(12.5f / PTM_RATIO, -21.1f / PTM_RATIO);
 verts[20].Set(-15.3f / PTM_RATIO, -21.1f / PTM_RATIO);
 verts[21].Set(-18.6f / PTM_RATIO, -20.8f / PTM_RATIO);
 verts[22].Set(-20.9f / PTM_RATIO, -14.8f / PTM_RATIO);
 verts[23].Set(-23.6f / PTM_RATIO, -16.9f / PTM_RATIO);
 verts[24].Set(-25.0f / PTM_RATIO, -14.9f / PTM_RATIO);
 
 //row 1, col 3
 int num = 28;
 verts[0].Set(-25.8f / PTM_RATIO, -14.6f / PTM_RATIO);
 verts[1].Set(-21.2f / PTM_RATIO, -8.2f / PTM_RATIO);
 verts[2].Set(-17.0f / PTM_RATIO, -11.4f / PTM_RATIO);
 verts[3].Set(-13.8f / PTM_RATIO, -11.2f / PTM_RATIO);
 verts[4].Set(-8.5f / PTM_RATIO, -5.6f / PTM_RATIO);
 verts[5].Set(-1.4f / PTM_RATIO, -8.0f / PTM_RATIO);
 verts[6].Set(5.8f / PTM_RATIO, -7.0f / PTM_RATIO);
 verts[7].Set(-2.6f / PTM_RATIO, -0.1f / PTM_RATIO);
 verts[8].Set(-3.5f / PTM_RATIO, 8.6f / PTM_RATIO);
 verts[9].Set(5.5f / PTM_RATIO, 20.2f / PTM_RATIO);
 verts[10].Set(8.3f / PTM_RATIO, 16.9f / PTM_RATIO);
 verts[11].Set(19.3f / PTM_RATIO, 10.5f / PTM_RATIO);
 verts[12].Set(19.8f / PTM_RATIO, 4.0f / PTM_RATIO);
 verts[13].Set(22.6f / PTM_RATIO, 3.3f / PTM_RATIO);
 verts[14].Set(22.3f / PTM_RATIO, -2.2f / PTM_RATIO);
 verts[15].Set(18.0f / PTM_RATIO, -6.3f / PTM_RATIO);
 verts[16].Set(13.3f / PTM_RATIO, -6.6f / PTM_RATIO);
 verts[17].Set(14.7f / PTM_RATIO, -11.9f / PTM_RATIO);
 verts[18].Set(18.2f / PTM_RATIO, -16.2f / PTM_RATIO);
 verts[19].Set(21.6f / PTM_RATIO, -12.5f / PTM_RATIO);
 verts[20].Set(26.3f / PTM_RATIO, -13.9f / PTM_RATIO);
 verts[21].Set(24.6f / PTM_RATIO, -17.6f / PTM_RATIO);
 verts[22].Set(21.9f / PTM_RATIO, -21.1f / PTM_RATIO);
 verts[23].Set(-15.0f / PTM_RATIO, -20.9f / PTM_RATIO);
 verts[24].Set(-20.3f / PTM_RATIO, -20.4f / PTM_RATIO);
 verts[25].Set(-22.1f / PTM_RATIO, -14.4f / PTM_RATIO);
 verts[26].Set(-24.2f / PTM_RATIO, -16.7f / PTM_RATIO);
 verts[27].Set(-26.5f / PTM_RATIO, -14.9f / PTM_RATIO);
 
 //row 1, col 4
 int num = 33;
 verts[0].Set(-22.4f / PTM_RATIO, -10.7f / PTM_RATIO);
 verts[1].Set(-16.9f / PTM_RATIO, -7.1f / PTM_RATIO);
 verts[2].Set(-12.6f / PTM_RATIO, -10.9f / PTM_RATIO);
 verts[3].Set(-8.4f / PTM_RATIO, -5.2f / PTM_RATIO);
 verts[4].Set(0.6f / PTM_RATIO, -7.1f / PTM_RATIO);
 verts[5].Set(6.3f / PTM_RATIO, -6.1f / PTM_RATIO);
 verts[6].Set(0.0f / PTM_RATIO, 0.4f / PTM_RATIO);
 verts[7].Set(-0.4f / PTM_RATIO, 9.7f / PTM_RATIO);
 verts[8].Set(11.9f / PTM_RATIO, 21.0f / PTM_RATIO);
 verts[9].Set(14.1f / PTM_RATIO, 17.2f / PTM_RATIO);
 verts[10].Set(22.5f / PTM_RATIO, 9.0f / PTM_RATIO);
 verts[11].Set(23.1f / PTM_RATIO, 2.5f / PTM_RATIO);
 verts[12].Set(26.0f / PTM_RATIO, 0.5f / PTM_RATIO);
 verts[13].Set(25.4f / PTM_RATIO, -5.0f / PTM_RATIO);
 verts[14].Set(20.1f / PTM_RATIO, -8.7f / PTM_RATIO);
 verts[15].Set(16.4f / PTM_RATIO, -9.0f / PTM_RATIO);
 verts[16].Set(15.9f / PTM_RATIO, -11.9f / PTM_RATIO);
 verts[17].Set(13.3f / PTM_RATIO, -14.0f / PTM_RATIO);
 verts[18].Set(18.3f / PTM_RATIO, -14.9f / PTM_RATIO);
 verts[19].Set(21.0f / PTM_RATIO, -12.2f / PTM_RATIO);
 verts[20].Set(24.6f / PTM_RATIO, -14.9f / PTM_RATIO);
 verts[21].Set(19.4f / PTM_RATIO, -21.5f / PTM_RATIO);
 verts[22].Set(14.0f / PTM_RATIO, -20.7f / PTM_RATIO);
 verts[23].Set(6.1f / PTM_RATIO, -19.7f / PTM_RATIO);
 verts[24].Set(2.1f / PTM_RATIO, -21.4f / PTM_RATIO);
 verts[25].Set(-7.6f / PTM_RATIO, -20.7f / PTM_RATIO);
 verts[26].Set(-18.2f / PTM_RATIO, -20.2f / PTM_RATIO);
 verts[27].Set(-19.1f / PTM_RATIO, -21.4f / PTM_RATIO);
 verts[28].Set(-22.4f / PTM_RATIO, -20.0f / PTM_RATIO);
 verts[29].Set(-22.9f / PTM_RATIO, -17.4f / PTM_RATIO);
 verts[30].Set(-19.5f / PTM_RATIO, -14.0f / PTM_RATIO);
 verts[31].Set(-19.5f / PTM_RATIO, -11.9f / PTM_RATIO);
 verts[32].Set(-22.6f / PTM_RATIO, -11.7f / PTM_RATIO);
 
 //row 1, col 5
 int num = 23;
 verts[0].Set(-25.0f / PTM_RATIO, -19.4f / PTM_RATIO);
 verts[1].Set(-15.1f / PTM_RATIO, -7.0f / PTM_RATIO);
 verts[2].Set(-11.6f / PTM_RATIO, -9.9f / PTM_RATIO);
 verts[3].Set(-8.5f / PTM_RATIO, -6.0f / PTM_RATIO);
 verts[4].Set(0.9f / PTM_RATIO, -7.5f / PTM_RATIO);
 verts[5].Set(5.5f / PTM_RATIO, -6.1f / PTM_RATIO);
 verts[6].Set(-0.0f / PTM_RATIO, 0.5f / PTM_RATIO);
 verts[7].Set(-0.1f / PTM_RATIO, 9.9f / PTM_RATIO);
 verts[8].Set(12.2f / PTM_RATIO, 20.7f / PTM_RATIO);
 verts[9].Set(14.4f / PTM_RATIO, 17.2f / PTM_RATIO);
 verts[10].Set(22.5f / PTM_RATIO, 8.9f / PTM_RATIO);
 verts[11].Set(22.7f / PTM_RATIO, 3.0f / PTM_RATIO);
 verts[12].Set(26.0f / PTM_RATIO, 0.7f / PTM_RATIO);
 verts[13].Set(25.2f / PTM_RATIO, -4.6f / PTM_RATIO);
 verts[14].Set(17.9f / PTM_RATIO, -8.7f / PTM_RATIO);
 verts[15].Set(16.7f / PTM_RATIO, -13.0f / PTM_RATIO);
 verts[16].Set(21.6f / PTM_RATIO, -10.1f / PTM_RATIO);
 verts[17].Set(26.1f / PTM_RATIO, -13.0f / PTM_RATIO);
 verts[18].Set(20.1f / PTM_RATIO, -18.2f / PTM_RATIO);
 verts[19].Set(19.7f / PTM_RATIO, -20.5f / PTM_RATIO);
 verts[20].Set(17.1f / PTM_RATIO, -21.4f / PTM_RATIO);
 verts[21].Set(-18.8f / PTM_RATIO, -21.1f / PTM_RATIO);
 verts[22].Set(-25.8f / PTM_RATIO, -19.9f / PTM_RATIO);
 
 //row 1, col 6
 int num = 25;
 verts[0].Set(-23.1f / PTM_RATIO, -13.6f / PTM_RATIO);
 verts[1].Set(-20.4f / PTM_RATIO, -9.0f / PTM_RATIO);
 verts[2].Set(-15.6f / PTM_RATIO, -11.5f / PTM_RATIO);
 verts[3].Set(-9.6f / PTM_RATIO, -6.9f / PTM_RATIO);
 verts[4].Set(0.2f / PTM_RATIO, -8.4f / PTM_RATIO);
 verts[5].Set(7.6f / PTM_RATIO, -6.1f / PTM_RATIO);
 verts[6].Set(2.0f / PTM_RATIO, -0.4f / PTM_RATIO);
 verts[7].Set(2.0f / PTM_RATIO, 9.5f / PTM_RATIO);
 verts[8].Set(8.0f / PTM_RATIO, 15.7f / PTM_RATIO);
 verts[9].Set(16.2f / PTM_RATIO, 20.4f / PTM_RATIO);
 verts[10].Set(18.1f / PTM_RATIO, 16.7f / PTM_RATIO);
 verts[11].Set(24.4f / PTM_RATIO, 10.1f / PTM_RATIO);
 verts[12].Set(24.4f / PTM_RATIO, 0.9f / PTM_RATIO);
 verts[13].Set(26.7f / PTM_RATIO, -1.1f / PTM_RATIO);
 verts[14].Set(24.4f / PTM_RATIO, -7.7f / PTM_RATIO);
 verts[15].Set(16.2f / PTM_RATIO, -9.9f / PTM_RATIO);
 verts[16].Set(14.6f / PTM_RATIO, -13.9f / PTM_RATIO);
 verts[17].Set(16.9f / PTM_RATIO, -16.4f / PTM_RATIO);
 verts[18].Set(21.4f / PTM_RATIO, -13.1f / PTM_RATIO);
 verts[19].Set(25.1f / PTM_RATIO, -15.6f / PTM_RATIO);
 verts[20].Set(19.7f / PTM_RATIO, -21.4f / PTM_RATIO);
 verts[21].Set(-15.8f / PTM_RATIO, -21.4f / PTM_RATIO);
 verts[22].Set(-19.3f / PTM_RATIO, -17.5f / PTM_RATIO);
 verts[23].Set(-20.9f / PTM_RATIO, -18.9f / PTM_RATIO);
 verts[24].Set(-23.9f / PTM_RATIO, -13.0f / PTM_RATIO);
 
 //row 1, col 7
 int num = 27;
 verts[0].Set(-24.4f / PTM_RATIO, -14.6f / PTM_RATIO);
 verts[1].Set(-21.3f / PTM_RATIO, -10.0f / PTM_RATIO);
 verts[2].Set(-16.4f / PTM_RATIO, -11.9f / PTM_RATIO);
 verts[3].Set(-10.9f / PTM_RATIO, -5.5f / PTM_RATIO);
 verts[4].Set(-2.1f / PTM_RATIO, -7.4f / PTM_RATIO);
 verts[5].Set(5.5f / PTM_RATIO, -6.2f / PTM_RATIO);
 verts[6].Set(1.1f / PTM_RATIO, -1.5f / PTM_RATIO);
 verts[7].Set(1.4f / PTM_RATIO, 9.7f / PTM_RATIO);
 verts[8].Set(14.7f / PTM_RATIO, 20.0f / PTM_RATIO);
 verts[9].Set(17.2f / PTM_RATIO, 15.1f / PTM_RATIO);
 verts[10].Set(23.1f / PTM_RATIO, 8.4f / PTM_RATIO);
 verts[11].Set(23.1f / PTM_RATIO, -1.0f / PTM_RATIO);
 verts[12].Set(25.1f / PTM_RATIO, -2.7f / PTM_RATIO);
 verts[13].Set(20.4f / PTM_RATIO, -10.0f / PTM_RATIO);
 verts[14].Set(14.2f / PTM_RATIO, -10.2f / PTM_RATIO);
 verts[15].Set(14.4f / PTM_RATIO, -15.5f / PTM_RATIO);
 verts[16].Set(19.5f / PTM_RATIO, -16.0f / PTM_RATIO);
 verts[17].Set(22.2f / PTM_RATIO, -19.4f / PTM_RATIO);
 verts[18].Set(20.6f / PTM_RATIO, -21.4f / PTM_RATIO);
 verts[19].Set(10.2f / PTM_RATIO, -21.5f / PTM_RATIO);
 verts[20].Set(7.6f / PTM_RATIO, -17.5f / PTM_RATIO);
 verts[21].Set(0.2f / PTM_RATIO, -21.5f / PTM_RATIO);
 verts[22].Set(-18.0f / PTM_RATIO, -21.4f / PTM_RATIO);
 verts[23].Set(-20.8f / PTM_RATIO, -19.1f / PTM_RATIO);
 verts[24].Set(-20.5f / PTM_RATIO, -21.2f / PTM_RATIO);
 verts[25].Set(-23.5f / PTM_RATIO, -21.2f / PTM_RATIO);
 verts[26].Set(-24.1f / PTM_RATIO, -14.5f / PTM_RATIO);
 
 //row 1, col 8
 int num = 26;
 verts[0].Set(-27.3f / PTM_RATIO, -20.4f / PTM_RATIO);
 verts[1].Set(-27.4f / PTM_RATIO, -15.5f / PTM_RATIO);
 verts[2].Set(-19.1f / PTM_RATIO, -8.0f / PTM_RATIO);
 verts[3].Set(-16.8f / PTM_RATIO, -11.0f / PTM_RATIO);
 verts[4].Set(-12.0f / PTM_RATIO, -4.9f / PTM_RATIO);
 verts[5].Set(-4.0f / PTM_RATIO, -7.1f / PTM_RATIO);
 verts[6].Set(5.2f / PTM_RATIO, -5.7f / PTM_RATIO);
 verts[7].Set(-0.8f / PTM_RATIO, 2.1f / PTM_RATIO);
 verts[8].Set(-1.1f / PTM_RATIO, 12.0f / PTM_RATIO);
 verts[9].Set(12.1f / PTM_RATIO, 22.5f / PTM_RATIO);
 verts[10].Set(14.4f / PTM_RATIO, 18.2f / PTM_RATIO);
 verts[11].Set(21.5f / PTM_RATIO, 11.0f / PTM_RATIO);
 verts[12].Set(21.5f / PTM_RATIO, 3.7f / PTM_RATIO);
 verts[13].Set(23.9f / PTM_RATIO, 2.1f / PTM_RATIO);
 verts[14].Set(20.1f / PTM_RATIO, -7.1f / PTM_RATIO);
 verts[15].Set(12.9f / PTM_RATIO, -7.0f / PTM_RATIO);
 verts[16].Set(12.2f / PTM_RATIO, -16.2f / PTM_RATIO);
 verts[17].Set(19.1f / PTM_RATIO, -16.9f / PTM_RATIO);
 verts[18].Set(19.2f / PTM_RATIO, -21.2f / PTM_RATIO);
 verts[19].Set(4.1f / PTM_RATIO, -21.5f / PTM_RATIO);
 verts[20].Set(3.0f / PTM_RATIO, -19.5f / PTM_RATIO);
 verts[21].Set(-1.5f / PTM_RATIO, -21.2f / PTM_RATIO);
 verts[22].Set(-22.0f / PTM_RATIO, -21.1f / PTM_RATIO);
 verts[23].Set(-24.8f / PTM_RATIO, -18.4f / PTM_RATIO);
 verts[24].Set(-24.4f / PTM_RATIO, -21.2f / PTM_RATIO);
 verts[25].Set(-27.6f / PTM_RATIO, -21.1f / PTM_RATIO);
 
 
 ///////////////////////////////////////////////////////
 hit (initialization)
 
 //row 1, col 1
 int num = 35;
 b2Vec2 verts[] = {
 b2Vec2(-22.0f / PTM_RATIO, -27.5f / PTM_RATIO),
 b2Vec2(-22.2f / PTM_RATIO, -27.5f / PTM_RATIO),
 b2Vec2(-17.0f / PTM_RATIO, -28.5f / PTM_RATIO),
 b2Vec2(-10.0f / PTM_RATIO, -17.0f / PTM_RATIO),
 b2Vec2(-9.0f / PTM_RATIO, 0.5f / PTM_RATIO),
 b2Vec2(-22.5f / PTM_RATIO, 10.0f / PTM_RATIO),
 b2Vec2(-24.5f / PTM_RATIO, 15.7f / PTM_RATIO),
 b2Vec2(-19.2f / PTM_RATIO, 17.2f / PTM_RATIO),
 b2Vec2(-17.2f / PTM_RATIO, 13.0f / PTM_RATIO),
 b2Vec2(-8.2f / PTM_RATIO, 6.0f / PTM_RATIO),
 b2Vec2(-10.7f / PTM_RATIO, 26.2f / PTM_RATIO),
 b2Vec2(-4.5f / PTM_RATIO, 30.0f / PTM_RATIO),
 b2Vec2(-4.0f / PTM_RATIO, 33.7f / PTM_RATIO),
 b2Vec2(0.8f / PTM_RATIO, 33.2f / PTM_RATIO),
 b2Vec2(0.5f / PTM_RATIO, 31.5f / PTM_RATIO),
 b2Vec2(11.0f / PTM_RATIO, 25.2f / PTM_RATIO),
 b2Vec2(11.3f / PTM_RATIO, 17.5f / PTM_RATIO),
 b2Vec2(13.0f / PTM_RATIO, 14.7f / PTM_RATIO),
 b2Vec2(5.3f / PTM_RATIO, 7.2f / PTM_RATIO),
 b2Vec2(5.8f / PTM_RATIO, 5.5f / PTM_RATIO),
 b2Vec2(16.5f / PTM_RATIO, 11.7f / PTM_RATIO),
 b2Vec2(17.0f / PTM_RATIO, 15.5f / PTM_RATIO),
 b2Vec2(26.0f / PTM_RATIO, 11.5f / PTM_RATIO),
 b2Vec2(6.3f / PTM_RATIO, 0.0f / PTM_RATIO),
 b2Vec2(10.3f / PTM_RATIO, -15.7f / PTM_RATIO),
 b2Vec2(16.3f / PTM_RATIO, -29.2f / PTM_RATIO),
 b2Vec2(20.3f / PTM_RATIO, -28.5f / PTM_RATIO),
 b2Vec2(22.3f / PTM_RATIO, -31.0f / PTM_RATIO),
 b2Vec2(18.5f / PTM_RATIO, -33.7f / PTM_RATIO),
 b2Vec2(13.8f / PTM_RATIO, -34.0f / PTM_RATIO),
 b2Vec2(3.3f / PTM_RATIO, -22.7f / PTM_RATIO),
 b2Vec2(-4.0f / PTM_RATIO, -22.7f / PTM_RATIO),
 b2Vec2(-13.0f / PTM_RATIO, -33.0f / PTM_RATIO),
 b2Vec2(-15.7f / PTM_RATIO, -33.5f / PTM_RATIO),
 b2Vec2(-22.7f / PTM_RATIO, -29.2f / PTM_RATIO)
 };
 
 //row 1, col 2
 int num = 32;
 b2Vec2 verts[] = {
 b2Vec2(-21.3f / PTM_RATIO, -26.7f / PTM_RATIO),
 b2Vec2(-16.5f / PTM_RATIO, -27.7f / PTM_RATIO),
 b2Vec2(-9.5f / PTM_RATIO, -15.5f / PTM_RATIO),
 b2Vec2(-7.3f / PTM_RATIO, 3.0f / PTM_RATIO),
 b2Vec2(-17.0f / PTM_RATIO, 13.7f / PTM_RATIO),
 b2Vec2(-20.5f / PTM_RATIO, 18.5f / PTM_RATIO),
 b2Vec2(-16.0f / PTM_RATIO, 23.5f / PTM_RATIO),
 b2Vec2(-12.8f / PTM_RATIO, 18.2f / PTM_RATIO),
 b2Vec2(-8.8f / PTM_RATIO, 11.0f / PTM_RATIO),
 b2Vec2(-6.0f / PTM_RATIO, 25.0f / PTM_RATIO),
 b2Vec2(2.5f / PTM_RATIO, 33.2f / PTM_RATIO),
 b2Vec2(8.5f / PTM_RATIO, 31.0f / PTM_RATIO),
 b2Vec2(17.0f / PTM_RATIO, 21.7f / PTM_RATIO),
 b2Vec2(16.5f / PTM_RATIO, 11.5f / PTM_RATIO),
 b2Vec2(19.0f / PTM_RATIO, 16.2f / PTM_RATIO),
 b2Vec2(24.2f / PTM_RATIO, 17.2f / PTM_RATIO),
 b2Vec2(26.0f / PTM_RATIO, 10.7f / PTM_RATIO),
 b2Vec2(20.5f / PTM_RATIO, 9.0f / PTM_RATIO),
 b2Vec2(16.0f / PTM_RATIO, 5.0f / PTM_RATIO),
 b2Vec2(6.5f / PTM_RATIO, 2.7f / PTM_RATIO),
 b2Vec2(10.5f / PTM_RATIO, -11.2f / PTM_RATIO),
 b2Vec2(12.2f / PTM_RATIO, -13.2f / PTM_RATIO),
 b2Vec2(19.2f / PTM_RATIO, -23.5f / PTM_RATIO),
 b2Vec2(22.5f / PTM_RATIO, -21.5f / PTM_RATIO),
 b2Vec2(25.2f / PTM_RATIO, -24.0f / PTM_RATIO),
 b2Vec2(18.7f / PTM_RATIO, -30.0f / PTM_RATIO),
 b2Vec2(11.5f / PTM_RATIO, -24.2f / PTM_RATIO),
 b2Vec2(5.0f / PTM_RATIO, -19.5f / PTM_RATIO),
 b2Vec2(-2.3f / PTM_RATIO, -20.2f / PTM_RATIO),
 b2Vec2(-8.5f / PTM_RATIO, -24.7f / PTM_RATIO),
 b2Vec2(-14.0f / PTM_RATIO, -33.0f / PTM_RATIO),
 b2Vec2(-21.8f / PTM_RATIO, -28.5f / PTM_RATIO)
 };
 
 ///////////////////////////////////////////////////////
 hit (assignment)
 
 //row 1, col 1
 int num = 35;
 verts[0].Set(-22.0f / PTM_RATIO, -27.5f / PTM_RATIO);
 verts[1].Set(-22.2f / PTM_RATIO, -27.5f / PTM_RATIO);
 verts[2].Set(-17.0f / PTM_RATIO, -28.5f / PTM_RATIO);
 verts[3].Set(-10.0f / PTM_RATIO, -17.0f / PTM_RATIO);
 verts[4].Set(-9.0f / PTM_RATIO, 0.5f / PTM_RATIO);
 verts[5].Set(-22.5f / PTM_RATIO, 10.0f / PTM_RATIO);
 verts[6].Set(-24.5f / PTM_RATIO, 15.7f / PTM_RATIO);
 verts[7].Set(-19.2f / PTM_RATIO, 17.2f / PTM_RATIO);
 verts[8].Set(-17.2f / PTM_RATIO, 13.0f / PTM_RATIO);
 verts[9].Set(-8.2f / PTM_RATIO, 6.0f / PTM_RATIO);
 verts[10].Set(-10.7f / PTM_RATIO, 26.2f / PTM_RATIO);
 verts[11].Set(-4.5f / PTM_RATIO, 30.0f / PTM_RATIO);
 verts[12].Set(-4.0f / PTM_RATIO, 33.7f / PTM_RATIO);
 verts[13].Set(0.8f / PTM_RATIO, 33.2f / PTM_RATIO);
 verts[14].Set(0.5f / PTM_RATIO, 31.5f / PTM_RATIO);
 verts[15].Set(11.0f / PTM_RATIO, 25.2f / PTM_RATIO);
 verts[16].Set(11.3f / PTM_RATIO, 17.5f / PTM_RATIO);
 verts[17].Set(13.0f / PTM_RATIO, 14.7f / PTM_RATIO);
 verts[18].Set(5.3f / PTM_RATIO, 7.2f / PTM_RATIO);
 verts[19].Set(5.8f / PTM_RATIO, 5.5f / PTM_RATIO);
 verts[20].Set(16.5f / PTM_RATIO, 11.7f / PTM_RATIO);
 verts[21].Set(17.0f / PTM_RATIO, 15.5f / PTM_RATIO);
 verts[22].Set(26.0f / PTM_RATIO, 11.5f / PTM_RATIO);
 verts[23].Set(6.3f / PTM_RATIO, 0.0f / PTM_RATIO);
 verts[24].Set(10.3f / PTM_RATIO, -15.7f / PTM_RATIO);
 verts[25].Set(16.3f / PTM_RATIO, -29.2f / PTM_RATIO);
 verts[26].Set(20.3f / PTM_RATIO, -28.5f / PTM_RATIO);
 verts[27].Set(22.3f / PTM_RATIO, -31.0f / PTM_RATIO);
 verts[28].Set(18.5f / PTM_RATIO, -33.7f / PTM_RATIO);
 verts[29].Set(13.8f / PTM_RATIO, -34.0f / PTM_RATIO);
 verts[30].Set(3.3f / PTM_RATIO, -22.7f / PTM_RATIO);
 verts[31].Set(-4.0f / PTM_RATIO, -22.7f / PTM_RATIO);
 verts[32].Set(-13.0f / PTM_RATIO, -33.0f / PTM_RATIO);
 verts[33].Set(-15.7f / PTM_RATIO, -33.5f / PTM_RATIO);
 verts[34].Set(-22.7f / PTM_RATIO, -29.2f / PTM_RATIO);
 
 //row 1, col 2
 int num = 32;
 verts[0].Set(-21.3f / PTM_RATIO, -26.7f / PTM_RATIO);
 verts[1].Set(-16.5f / PTM_RATIO, -27.7f / PTM_RATIO);
 verts[2].Set(-9.5f / PTM_RATIO, -15.5f / PTM_RATIO);
 verts[3].Set(-7.3f / PTM_RATIO, 3.0f / PTM_RATIO);
 verts[4].Set(-17.0f / PTM_RATIO, 13.7f / PTM_RATIO);
 verts[5].Set(-20.5f / PTM_RATIO, 18.5f / PTM_RATIO);
 verts[6].Set(-16.0f / PTM_RATIO, 23.5f / PTM_RATIO);
 verts[7].Set(-12.8f / PTM_RATIO, 18.2f / PTM_RATIO);
 verts[8].Set(-8.8f / PTM_RATIO, 11.0f / PTM_RATIO);
 verts[9].Set(-6.0f / PTM_RATIO, 25.0f / PTM_RATIO);
 verts[10].Set(2.5f / PTM_RATIO, 33.2f / PTM_RATIO);
 verts[11].Set(8.5f / PTM_RATIO, 31.0f / PTM_RATIO);
 verts[12].Set(17.0f / PTM_RATIO, 21.7f / PTM_RATIO);
 verts[13].Set(16.5f / PTM_RATIO, 11.5f / PTM_RATIO);
 verts[14].Set(19.0f / PTM_RATIO, 16.2f / PTM_RATIO);
 verts[15].Set(24.2f / PTM_RATIO, 17.2f / PTM_RATIO);
 verts[16].Set(26.0f / PTM_RATIO, 10.7f / PTM_RATIO);
 verts[17].Set(20.5f / PTM_RATIO, 9.0f / PTM_RATIO);
 verts[18].Set(16.0f / PTM_RATIO, 5.0f / PTM_RATIO);
 verts[19].Set(6.5f / PTM_RATIO, 2.7f / PTM_RATIO);
 verts[20].Set(10.5f / PTM_RATIO, -11.2f / PTM_RATIO);
 verts[21].Set(12.2f / PTM_RATIO, -13.2f / PTM_RATIO);
 verts[22].Set(19.2f / PTM_RATIO, -23.5f / PTM_RATIO);
 verts[23].Set(22.5f / PTM_RATIO, -21.5f / PTM_RATIO);
 verts[24].Set(25.2f / PTM_RATIO, -24.0f / PTM_RATIO);
 verts[25].Set(18.7f / PTM_RATIO, -30.0f / PTM_RATIO);
 verts[26].Set(11.5f / PTM_RATIO, -24.2f / PTM_RATIO);
 verts[27].Set(5.0f / PTM_RATIO, -19.5f / PTM_RATIO);
 verts[28].Set(-2.3f / PTM_RATIO, -20.2f / PTM_RATIO);
 verts[29].Set(-8.5f / PTM_RATIO, -24.7f / PTM_RATIO);
 verts[30].Set(-14.0f / PTM_RATIO, -33.0f / PTM_RATIO);
 verts[31].Set(-21.8f / PTM_RATIO, -28.5f / PTM_RATIO);

/////////////////////////////////////////////////////////////
 
 forward (assignment)
 
 //row 1, col 1
 int num = 27;
 verts[0].Set(-12.6f / PTM_RATIO, -30.7f / PTM_RATIO);
 verts[1].Set(-9.3f / PTM_RATIO, -23.0f / PTM_RATIO);
 verts[2].Set(-8.6f / PTM_RATIO, -8.3f / PTM_RATIO);
 verts[3].Set(-6.3f / PTM_RATIO, 4.3f / PTM_RATIO);
 verts[4].Set(-13.9f / PTM_RATIO, 13.4f / PTM_RATIO);
 verts[5].Set(-12.6f / PTM_RATIO, 24.0f / PTM_RATIO);
 verts[6].Set(-2.6f / PTM_RATIO, 31.1f / PTM_RATIO);
 verts[7].Set(4.1f / PTM_RATIO, 34.4f / PTM_RATIO);
 verts[8].Set(6.8f / PTM_RATIO, 27.7f / PTM_RATIO);
 verts[9].Set(12.1f / PTM_RATIO, 21.7f / PTM_RATIO);
 verts[10].Set(9.4f / PTM_RATIO, 13.0f / PTM_RATIO);
 verts[11].Set(12.4f / PTM_RATIO, 10.4f / PTM_RATIO);
 verts[12].Set(9.1f / PTM_RATIO, 3.7f / PTM_RATIO);
 verts[13].Set(3.8f / PTM_RATIO, 1.0f / PTM_RATIO);
 verts[14].Set(7.4f / PTM_RATIO, -4.0f / PTM_RATIO);
 verts[15].Set(12.8f / PTM_RATIO, 0.3f / PTM_RATIO);
 verts[16].Set(17.4f / PTM_RATIO, -4.3f / PTM_RATIO);
 verts[17].Set(10.8f / PTM_RATIO, -9.0f / PTM_RATIO);
 verts[18].Set(11.8f / PTM_RATIO, -11.7f / PTM_RATIO);
 verts[19].Set(6.4f / PTM_RATIO, -15.0f / PTM_RATIO);
 verts[20].Set(3.1f / PTM_RATIO, -29.0f / PTM_RATIO);
 verts[21].Set(7.8f / PTM_RATIO, -33.1f / PTM_RATIO);
 verts[22].Set(-3.3f / PTM_RATIO, -33.4f / PTM_RATIO);
 verts[23].Set(-2.9f / PTM_RATIO, -23.0f / PTM_RATIO);
 verts[24].Set(-7.6f / PTM_RATIO, -29.7f / PTM_RATIO);
 verts[25].Set(-4.9f / PTM_RATIO, -33.1f / PTM_RATIO);
 verts[26].Set(-12.3f / PTM_RATIO, -31.1f / PTM_RATIO);
 
 //row 1, col 2
 int num = 27;
 verts[0].Set(-9.5f / PTM_RATIO, -32.6f / PTM_RATIO);
 verts[1].Set(-6.6f / PTM_RATIO, -29.5f / PTM_RATIO);
 verts[2].Set(-6.6f / PTM_RATIO, -23.6f / PTM_RATIO);
 verts[3].Set(-4.7f / PTM_RATIO, -22.4f / PTM_RATIO);
 verts[4].Set(-7.8f / PTM_RATIO, -18.2f / PTM_RATIO);
 verts[5].Set(-4.7f / PTM_RATIO, -8.0f / PTM_RATIO);
 verts[6].Set(-4.5f / PTM_RATIO, 3.1f / PTM_RATIO);
 verts[7].Set(-13.0f / PTM_RATIO, 11.6f / PTM_RATIO);
 verts[8].Set(-14.7f / PTM_RATIO, 22.4f / PTM_RATIO);
 verts[9].Set(-4.7f / PTM_RATIO, 30.7f / PTM_RATIO);
 verts[10].Set(-2.9f / PTM_RATIO, 33.8f / PTM_RATIO);
 verts[11].Set(1.2f / PTM_RATIO, 29.7f / PTM_RATIO);
 verts[12].Set(9.9f / PTM_RATIO, 22.4f / PTM_RATIO);
 verts[13].Set(9.7f / PTM_RATIO, 14.4f / PTM_RATIO);
 verts[14].Set(11.8f / PTM_RATIO, 12.3f / PTM_RATIO);
 verts[15].Set(9.9f / PTM_RATIO, 4.7f / PTM_RATIO);
 verts[16].Set(12.3f / PTM_RATIO, 4.0f / PTM_RATIO);
 verts[17].Set(17.9f / PTM_RATIO, 1.4f / PTM_RATIO);
 verts[18].Set(12.3f / PTM_RATIO, -6.1f / PTM_RATIO);
 verts[19].Set(17.0f / PTM_RATIO, -8.0f / PTM_RATIO);
 verts[20].Set(15.1f / PTM_RATIO, -13.7f / PTM_RATIO);
 verts[21].Set(8.0f / PTM_RATIO, -9.9f / PTM_RATIO);
 verts[22].Set(6.8f / PTM_RATIO, -21.7f / PTM_RATIO);
 verts[23].Set(4.0f / PTM_RATIO, -30.9f / PTM_RATIO);
 verts[24].Set(8.0f / PTM_RATIO, -33.1f / PTM_RATIO);
 verts[25].Set(-1.7f / PTM_RATIO, -34.0f / PTM_RATIO);
 verts[26].Set(-7.8f / PTM_RATIO, -31.6f / PTM_RATIO);
 
 //row 1, col 3
 int num = 33;
 verts[0].Set(-3.0f / PTM_RATIO, -33.7f / PTM_RATIO);
 verts[1].Set(-5.2f / PTM_RATIO, -26.2f / PTM_RATIO);
 verts[2].Set(-3.5f / PTM_RATIO, -23.7f / PTM_RATIO);
 verts[3].Set(-5.2f / PTM_RATIO, -18.5f / PTM_RATIO);
 verts[4].Set(-7.5f / PTM_RATIO, -17.7f / PTM_RATIO);
 verts[5].Set(-6.5f / PTM_RATIO, -11.0f / PTM_RATIO);
 verts[6].Set(-3.5f / PTM_RATIO, -6.0f / PTM_RATIO);
 verts[7].Set(-6.2f / PTM_RATIO, 4.0f / PTM_RATIO);
 verts[8].Set(-16.0f / PTM_RATIO, 12.0f / PTM_RATIO);
 verts[9].Set(-18.2f / PTM_RATIO, 21.7f / PTM_RATIO);
 verts[10].Set(-5.7f / PTM_RATIO, 33.7f / PTM_RATIO);
 verts[11].Set(-3.0f / PTM_RATIO, 30.7f / PTM_RATIO);
 verts[12].Set(6.8f / PTM_RATIO, 23.0f / PTM_RATIO);
 verts[13].Set(6.5f / PTM_RATIO, 15.5f / PTM_RATIO);
 verts[14].Set(10.0f / PTM_RATIO, 15.2f / PTM_RATIO);
 verts[15].Set(8.0f / PTM_RATIO, 7.2f / PTM_RATIO);
 verts[16].Set(2.5f / PTM_RATIO, 4.5f / PTM_RATIO);
 verts[17].Set(2.5f / PTM_RATIO, 1.2f / PTM_RATIO);
 verts[18].Set(9.0f / PTM_RATIO, -1.2f / PTM_RATIO);
 verts[19].Set(13.8f / PTM_RATIO, 2.5f / PTM_RATIO);
 verts[20].Set(15.8f / PTM_RATIO, 4.2f / PTM_RATIO);
 verts[21].Set(19.3f / PTM_RATIO, 0.2f / PTM_RATIO);
 verts[22].Set(19.0f / PTM_RATIO, -8.7f / PTM_RATIO);
 verts[23].Set(11.5f / PTM_RATIO, -9.0f / PTM_RATIO);
 verts[24].Set(7.5f / PTM_RATIO, -6.2f / PTM_RATIO);
 verts[25].Set(8.5f / PTM_RATIO, -16.2f / PTM_RATIO);
 verts[26].Set(6.5f / PTM_RATIO, -19.7f / PTM_RATIO);
 verts[27].Set(8.5f / PTM_RATIO, -26.0f / PTM_RATIO);
 verts[28].Set(12.5f / PTM_RATIO, -26.7f / PTM_RATIO);
 verts[29].Set(13.0f / PTM_RATIO, -29.7f / PTM_RATIO);
 verts[30].Set(4.5f / PTM_RATIO, -31.0f / PTM_RATIO);
 verts[31].Set(5.0f / PTM_RATIO, -33.7f / PTM_RATIO);
 verts[32].Set(-3.7f / PTM_RATIO, -33.2f / PTM_RATIO);
 
 //row 1, col 4
 int num = 32;
 verts[0].Set(-3.5f / PTM_RATIO, -32.5f / PTM_RATIO);
 verts[1].Set(-4.2f / PTM_RATIO, -26.2f / PTM_RATIO);
 verts[2].Set(-3.2f / PTM_RATIO, -21.0f / PTM_RATIO);
 verts[3].Set(-3.0f / PTM_RATIO, -9.7f / PTM_RATIO);
 verts[4].Set(-2.0f / PTM_RATIO, 0.5f / PTM_RATIO);
 verts[5].Set(-9.0f / PTM_RATIO, 5.5f / PTM_RATIO);
 verts[6].Set(-17.0f / PTM_RATIO, 12.2f / PTM_RATIO);
 verts[7].Set(-17.5f / PTM_RATIO, 20.5f / PTM_RATIO);
 verts[8].Set(-6.2f / PTM_RATIO, 33.7f / PTM_RATIO);
 verts[9].Set(-3.7f / PTM_RATIO, 29.5f / PTM_RATIO);
 verts[10].Set(6.0f / PTM_RATIO, 23.2f / PTM_RATIO);
 verts[11].Set(8.3f / PTM_RATIO, 16.0f / PTM_RATIO);
 verts[12].Set(13.5f / PTM_RATIO, 14.5f / PTM_RATIO);
 verts[13].Set(9.8f / PTM_RATIO, 6.7f / PTM_RATIO);
 verts[14].Set(4.5f / PTM_RATIO, 4.0f / PTM_RATIO);
 verts[15].Set(8.5f / PTM_RATIO, 3.5f / PTM_RATIO);
 verts[16].Set(16.0f / PTM_RATIO, 4.2f / PTM_RATIO);
 verts[17].Set(20.0f / PTM_RATIO, 7.7f / PTM_RATIO);
 verts[18].Set(22.5f / PTM_RATIO, 5.2f / PTM_RATIO);
 verts[19].Set(22.0f / PTM_RATIO, -1.0f / PTM_RATIO);
 verts[20].Set(19.0f / PTM_RATIO, -1.2f / PTM_RATIO);
 verts[21].Set(22.5f / PTM_RATIO, -4.2f / PTM_RATIO);
 verts[22].Set(21.8f / PTM_RATIO, -8.7f / PTM_RATIO);
 verts[23].Set(17.3f / PTM_RATIO, -9.7f / PTM_RATIO);
 verts[24].Set(10.8f / PTM_RATIO, -8.7f / PTM_RATIO);
 verts[25].Set(10.5f / PTM_RATIO, -14.5f / PTM_RATIO);
 verts[26].Set(12.5f / PTM_RATIO, -13.7f / PTM_RATIO);
 verts[27].Set(8.5f / PTM_RATIO, -20.7f / PTM_RATIO);
 verts[28].Set(11.5f / PTM_RATIO, -30.7f / PTM_RATIO);
 verts[29].Set(16.5f / PTM_RATIO, -33.5f / PTM_RATIO);
 verts[30].Set(5.8f / PTM_RATIO, -33.5f / PTM_RATIO);
 verts[31].Set(-3.0f / PTM_RATIO, -31.7f / PTM_RATIO);
 
 //row 1, col 5
 int num = 27;
 verts[0].Set(0.8f / PTM_RATIO, -30.8f / PTM_RATIO);
 verts[1].Set(-0.9f / PTM_RATIO, -20.3f / PTM_RATIO);
 verts[2].Set(-5.0f / PTM_RATIO, -17.3f / PTM_RATIO);
 verts[3].Set(-3.9f / PTM_RATIO, -9.2f / PTM_RATIO);
 verts[4].Set(-2.0f / PTM_RATIO, 0.7f / PTM_RATIO);
 verts[5].Set(-14.7f / PTM_RATIO, 12.9f / PTM_RATIO);
 verts[6].Set(-15.1f / PTM_RATIO, 20.7f / PTM_RATIO);
 verts[7].Set(-6.8f / PTM_RATIO, 29.2f / PTM_RATIO);
 verts[8].Set(-5.0f / PTM_RATIO, 32.9f / PTM_RATIO);
 verts[9].Set(-1.1f / PTM_RATIO, 30.2f / PTM_RATIO);
 verts[10].Set(9.8f / PTM_RATIO, 22.5f / PTM_RATIO);
 verts[11].Set(10.5f / PTM_RATIO, 16.1f / PTM_RATIO);
 verts[12].Set(13.6f / PTM_RATIO, 15.2f / PTM_RATIO);
 verts[13].Set(12.5f / PTM_RATIO, 11.5f / PTM_RATIO);
 verts[14].Set(18.5f / PTM_RATIO, 3.7f / PTM_RATIO);
 verts[15].Set(8.4f / PTM_RATIO, -1.1f / PTM_RATIO);
 verts[16].Set(10.7f / PTM_RATIO, -4.2f / PTM_RATIO);
 verts[17].Set(17.6f / PTM_RATIO, -7.8f / PTM_RATIO);
 verts[18].Set(20.6f / PTM_RATIO, -5.5f / PTM_RATIO);
 verts[19].Set(23.1f / PTM_RATIO, -12.9f / PTM_RATIO);
 verts[20].Set(18.7f / PTM_RATIO, -15.2f / PTM_RATIO);
 verts[21].Set(10.7f / PTM_RATIO, -11.3f / PTM_RATIO);
 verts[22].Set(9.3f / PTM_RATIO, -21.0f / PTM_RATIO);
 verts[23].Set(9.3f / PTM_RATIO, -31.5f / PTM_RATIO);
 verts[24].Set(11.8f / PTM_RATIO, -33.6f / PTM_RATIO);
 verts[25].Set(2.9f / PTM_RATIO, -33.9f / PTM_RATIO);
 verts[26].Set(-0.2f / PTM_RATIO, -30.2f / PTM_RATIO);
 
 //row 1, col 6
 int num = 34;
 verts[0].Set(-2.8f / PTM_RATIO, -32.7f / PTM_RATIO);
 verts[1].Set(-4.4f / PTM_RATIO, -19.8f / PTM_RATIO);
 verts[2].Set(-6.9f / PTM_RATIO, -18.0f / PTM_RATIO);
 verts[3].Set(-5.5f / PTM_RATIO, -7.2f / PTM_RATIO);
 verts[4].Set(-3.2f / PTM_RATIO, -1.4f / PTM_RATIO);
 verts[5].Set(-7.1f / PTM_RATIO, 5.1f / PTM_RATIO);
 verts[6].Set(-14.7f / PTM_RATIO, 12.0f / PTM_RATIO);
 verts[7].Set(-14.3f / PTM_RATIO, 20.5f / PTM_RATIO);
 verts[8].Set(-4.4f / PTM_RATIO, 32.9f / PTM_RATIO);
 verts[9].Set(-0.4f / PTM_RATIO, 33.1f / PTM_RATIO);
 verts[10].Set(0.3f / PTM_RATIO, 29.9f / PTM_RATIO);
 verts[11].Set(10.1f / PTM_RATIO, 22.6f / PTM_RATIO);
 verts[12].Set(10.8f / PTM_RATIO, 14.7f / PTM_RATIO);
 verts[13].Set(12.9f / PTM_RATIO, 13.8f / PTM_RATIO);
 verts[14].Set(11.8f / PTM_RATIO, 6.7f / PTM_RATIO);
 verts[15].Set(7.8f / PTM_RATIO, 2.8f / PTM_RATIO);
 verts[16].Set(12.2f / PTM_RATIO, 3.2f / PTM_RATIO);
 verts[17].Set(16.4f / PTM_RATIO, 4.4f / PTM_RATIO);
 verts[18].Set(18.4f / PTM_RATIO, 7.4f / PTM_RATIO);
 verts[19].Set(20.1f / PTM_RATIO, -0.9f / PTM_RATIO);
 verts[20].Set(18.0f / PTM_RATIO, -2.1f / PTM_RATIO);
 verts[21].Set(19.3f / PTM_RATIO, -3.9f / PTM_RATIO);
 verts[22].Set(22.4f / PTM_RATIO, -5.8f / PTM_RATIO);
 verts[23].Set(21.4f / PTM_RATIO, -10.3f / PTM_RATIO);
 verts[24].Set(15.9f / PTM_RATIO, -10.4f / PTM_RATIO);
 verts[25].Set(15.0f / PTM_RATIO, -12.0f / PTM_RATIO);
 verts[26].Set(8.8f / PTM_RATIO, -11.7f / PTM_RATIO);
 verts[27].Set(7.8f / PTM_RATIO, -13.8f / PTM_RATIO);
 verts[28].Set(7.6f / PTM_RATIO, -20.0f / PTM_RATIO);
 verts[29].Set(6.2f / PTM_RATIO, -28.1f / PTM_RATIO);
 verts[30].Set(10.6f / PTM_RATIO, -28.3f / PTM_RATIO);
 verts[31].Set(10.4f / PTM_RATIO, -31.3f / PTM_RATIO);
 verts[32].Set(6.4f / PTM_RATIO, -33.6f / PTM_RATIO);
 verts[33].Set(-3.9f / PTM_RATIO, -32.5f / PTM_RATIO);
 
 //row 1, col 7
 int num = 27;
 verts[0].Set(-6.3f / PTM_RATIO, -31.6f / PTM_RATIO);
 verts[1].Set(-5.3f / PTM_RATIO, -24.0f / PTM_RATIO);
 verts[2].Set(-8.4f / PTM_RATIO, -16.6f / PTM_RATIO);
 verts[3].Set(-7.6f / PTM_RATIO, -8.7f / PTM_RATIO);
 verts[4].Set(-5.4f / PTM_RATIO, 0.7f / PTM_RATIO);
 verts[5].Set(-6.3f / PTM_RATIO, 4.2f / PTM_RATIO);
 verts[6].Set(-14.3f / PTM_RATIO, 12.2f / PTM_RATIO);
 verts[7].Set(-15.2f / PTM_RATIO, 21.2f / PTM_RATIO);
 verts[8].Set(-3.8f / PTM_RATIO, 33.8f / PTM_RATIO);
 verts[9].Set(-0.1f / PTM_RATIO, 30.1f / PTM_RATIO);
 verts[10].Set(8.9f / PTM_RATIO, 22.3f / PTM_RATIO);
 verts[11].Set(9.2f / PTM_RATIO, 14.5f / PTM_RATIO);
 verts[12].Set(11.5f / PTM_RATIO, 13.1f / PTM_RATIO);
 verts[13].Set(10.7f / PTM_RATIO, 6.0f / PTM_RATIO);
 verts[14].Set(18.8f / PTM_RATIO, 2.8f / PTM_RATIO);
 verts[15].Set(17.7f / PTM_RATIO, 0.4f / PTM_RATIO);
 verts[16].Set(20.2f / PTM_RATIO, -3.0f / PTM_RATIO);
 verts[17].Set(19.3f / PTM_RATIO, -6.5f / PTM_RATIO);
 verts[18].Set(17.2f / PTM_RATIO, -7.8f / PTM_RATIO);
 verts[19].Set(7.8f / PTM_RATIO, -6.5f / PTM_RATIO);
 verts[20].Set(6.1f / PTM_RATIO, -16.6f / PTM_RATIO);
 verts[21].Set(7.1f / PTM_RATIO, -30.1f / PTM_RATIO);
 verts[22].Set(11.5f / PTM_RATIO, -30.8f / PTM_RATIO);
 verts[23].Set(12.1f / PTM_RATIO, -33.1f / PTM_RATIO);
 verts[24].Set(2.2f / PTM_RATIO, -32.9f / PTM_RATIO);
 verts[25].Set(0.2f / PTM_RATIO, -32.5f / PTM_RATIO);
 verts[26].Set(-6.5f / PTM_RATIO, -31.1f / PTM_RATIO);
 
 //row 1, col 8
 int num = 34;
 verts[0].Set(-5.0f / PTM_RATIO, -31.1f / PTM_RATIO);
 verts[1].Set(-4.3f / PTM_RATIO, -25.1f / PTM_RATIO);
 verts[2].Set(-2.2f / PTM_RATIO, -23.0f / PTM_RATIO);
 verts[3].Set(-2.7f / PTM_RATIO, -17.0f / PTM_RATIO);
 verts[4].Set(-2.0f / PTM_RATIO, -9.0f / PTM_RATIO);
 verts[5].Set(0.1f / PTM_RATIO, 4.1f / PTM_RATIO);
 verts[6].Set(-6.1f / PTM_RATIO, 12.2f / PTM_RATIO);
 verts[7].Set(-6.4f / PTM_RATIO, 21.9f / PTM_RATIO);
 verts[8].Set(5.8f / PTM_RATIO, 29.9f / PTM_RATIO);
 verts[9].Set(7.5f / PTM_RATIO, 32.4f / PTM_RATIO);
 verts[10].Set(11.9f / PTM_RATIO, 31.6f / PTM_RATIO);
 verts[11].Set(12.1f / PTM_RATIO, 28.3f / PTM_RATIO);
 verts[12].Set(18.3f / PTM_RATIO, 21.7f / PTM_RATIO);
 verts[13].Set(18.0f / PTM_RATIO, 12.9f / PTM_RATIO);
 verts[14].Set(19.7f / PTM_RATIO, 10.3f / PTM_RATIO);
 verts[15].Set(18.3f / PTM_RATIO, 5.3f / PTM_RATIO);
 verts[16].Set(20.8f / PTM_RATIO, 4.1f / PTM_RATIO);
 verts[17].Set(21.8f / PTM_RATIO, -1.6f / PTM_RATIO);
 verts[18].Set(13.0f / PTM_RATIO, -5.1f / PTM_RATIO);
 verts[19].Set(17.1f / PTM_RATIO, -7.6f / PTM_RATIO);
 verts[20].Set(20.8f / PTM_RATIO, -6.7f / PTM_RATIO);
 verts[21].Set(21.7f / PTM_RATIO, -10.4f / PTM_RATIO);
 verts[22].Set(17.4f / PTM_RATIO, -14.7f / PTM_RATIO);
 verts[23].Set(12.7f / PTM_RATIO, -12.2f / PTM_RATIO);
 verts[24].Set(11.9f / PTM_RATIO, -31.5f / PTM_RATIO);
 verts[25].Set(16.4f / PTM_RATIO, -31.1f / PTM_RATIO);
 verts[26].Set(16.9f / PTM_RATIO, -33.2f / PTM_RATIO);
 verts[27].Set(7.0f / PTM_RATIO, -33.4f / PTM_RATIO);
 verts[28].Set(7.0f / PTM_RATIO, -26.2f / PTM_RATIO);
 verts[29].Set(4.3f / PTM_RATIO, -22.8f / PTM_RATIO);
 verts[30].Set(1.9f / PTM_RATIO, -29.9f / PTM_RATIO);
 verts[31].Set(3.8f / PTM_RATIO, -31.8f / PTM_RATIO);
 verts[32].Set(3.5f / PTM_RATIO, -33.6f / PTM_RATIO);
 verts[33].Set(-5.2f / PTM_RATIO, -31.5f / PTM_RATIO);
 
 
 
 /////////////////////////////////////////////////////////////
 
 forward (initialization)
 
 //row 1, col 1
 int num = 27;
 b2Vec2 verts[] = {
 b2Vec2(-12.6f / PTM_RATIO, -30.7f / PTM_RATIO),
 b2Vec2(-9.3f / PTM_RATIO, -23.0f / PTM_RATIO),
 b2Vec2(-8.6f / PTM_RATIO, -8.3f / PTM_RATIO),
 b2Vec2(-6.3f / PTM_RATIO, 4.3f / PTM_RATIO),
 b2Vec2(-13.9f / PTM_RATIO, 13.4f / PTM_RATIO),
 b2Vec2(-12.6f / PTM_RATIO, 24.0f / PTM_RATIO),
 b2Vec2(-2.6f / PTM_RATIO, 31.1f / PTM_RATIO),
 b2Vec2(4.1f / PTM_RATIO, 34.4f / PTM_RATIO),
 b2Vec2(6.8f / PTM_RATIO, 27.7f / PTM_RATIO),
 b2Vec2(12.1f / PTM_RATIO, 21.7f / PTM_RATIO),
 b2Vec2(9.4f / PTM_RATIO, 13.0f / PTM_RATIO),
 b2Vec2(12.4f / PTM_RATIO, 10.4f / PTM_RATIO),
 b2Vec2(9.1f / PTM_RATIO, 3.7f / PTM_RATIO),
 b2Vec2(3.8f / PTM_RATIO, 1.0f / PTM_RATIO),
 b2Vec2(7.4f / PTM_RATIO, -4.0f / PTM_RATIO),
 b2Vec2(12.8f / PTM_RATIO, 0.3f / PTM_RATIO),
 b2Vec2(17.4f / PTM_RATIO, -4.3f / PTM_RATIO),
 b2Vec2(10.8f / PTM_RATIO, -9.0f / PTM_RATIO),
 b2Vec2(11.8f / PTM_RATIO, -11.7f / PTM_RATIO),
 b2Vec2(6.4f / PTM_RATIO, -15.0f / PTM_RATIO),
 b2Vec2(3.1f / PTM_RATIO, -29.0f / PTM_RATIO),
 b2Vec2(7.8f / PTM_RATIO, -33.1f / PTM_RATIO),
 b2Vec2(-3.3f / PTM_RATIO, -33.4f / PTM_RATIO),
 b2Vec2(-2.9f / PTM_RATIO, -23.0f / PTM_RATIO),
 b2Vec2(-7.6f / PTM_RATIO, -29.7f / PTM_RATIO),
 b2Vec2(-4.9f / PTM_RATIO, -33.1f / PTM_RATIO),
 b2Vec2(-12.3f / PTM_RATIO, -31.1f / PTM_RATIO)
 };
 
 //row 1, col 2
 int num = 27;
 b2Vec2 verts[] = {
 b2Vec2(-9.5f / PTM_RATIO, -32.6f / PTM_RATIO),
 b2Vec2(-6.6f / PTM_RATIO, -29.5f / PTM_RATIO),
 b2Vec2(-6.6f / PTM_RATIO, -23.6f / PTM_RATIO),
 b2Vec2(-4.7f / PTM_RATIO, -22.4f / PTM_RATIO),
 b2Vec2(-7.8f / PTM_RATIO, -18.2f / PTM_RATIO),
 b2Vec2(-4.7f / PTM_RATIO, -8.0f / PTM_RATIO),
 b2Vec2(-4.5f / PTM_RATIO, 3.1f / PTM_RATIO),
 b2Vec2(-13.0f / PTM_RATIO, 11.6f / PTM_RATIO),
 b2Vec2(-14.7f / PTM_RATIO, 22.4f / PTM_RATIO),
 b2Vec2(-4.7f / PTM_RATIO, 30.7f / PTM_RATIO),
 b2Vec2(-2.9f / PTM_RATIO, 33.8f / PTM_RATIO),
 b2Vec2(1.2f / PTM_RATIO, 29.7f / PTM_RATIO),
 b2Vec2(9.9f / PTM_RATIO, 22.4f / PTM_RATIO),
 b2Vec2(9.7f / PTM_RATIO, 14.4f / PTM_RATIO),
 b2Vec2(11.8f / PTM_RATIO, 12.3f / PTM_RATIO),
 b2Vec2(9.9f / PTM_RATIO, 4.7f / PTM_RATIO),
 b2Vec2(12.3f / PTM_RATIO, 4.0f / PTM_RATIO),
 b2Vec2(17.9f / PTM_RATIO, 1.4f / PTM_RATIO),
 b2Vec2(12.3f / PTM_RATIO, -6.1f / PTM_RATIO),
 b2Vec2(17.0f / PTM_RATIO, -8.0f / PTM_RATIO),
 b2Vec2(15.1f / PTM_RATIO, -13.7f / PTM_RATIO),
 b2Vec2(8.0f / PTM_RATIO, -9.9f / PTM_RATIO),
 b2Vec2(6.8f / PTM_RATIO, -21.7f / PTM_RATIO),
 b2Vec2(4.0f / PTM_RATIO, -30.9f / PTM_RATIO),
 b2Vec2(8.0f / PTM_RATIO, -33.1f / PTM_RATIO),
 b2Vec2(-1.7f / PTM_RATIO, -34.0f / PTM_RATIO),
 b2Vec2(-7.8f / PTM_RATIO, -31.6f / PTM_RATIO)
 };
 
 //row 1, col 3
 int num = 33;
 b2Vec2 verts[] = {
 b2Vec2(-3.0f / PTM_RATIO, -33.7f / PTM_RATIO),
 b2Vec2(-5.2f / PTM_RATIO, -26.2f / PTM_RATIO),
 b2Vec2(-3.5f / PTM_RATIO, -23.7f / PTM_RATIO),
 b2Vec2(-5.2f / PTM_RATIO, -18.5f / PTM_RATIO),
 b2Vec2(-7.5f / PTM_RATIO, -17.7f / PTM_RATIO),
 b2Vec2(-6.5f / PTM_RATIO, -11.0f / PTM_RATIO),
 b2Vec2(-3.5f / PTM_RATIO, -6.0f / PTM_RATIO),
 b2Vec2(-6.2f / PTM_RATIO, 4.0f / PTM_RATIO),
 b2Vec2(-16.0f / PTM_RATIO, 12.0f / PTM_RATIO),
 b2Vec2(-18.2f / PTM_RATIO, 21.7f / PTM_RATIO),
 b2Vec2(-5.7f / PTM_RATIO, 33.7f / PTM_RATIO),
 b2Vec2(-3.0f / PTM_RATIO, 30.7f / PTM_RATIO),
 b2Vec2(6.8f / PTM_RATIO, 23.0f / PTM_RATIO),
 b2Vec2(6.5f / PTM_RATIO, 15.5f / PTM_RATIO),
 b2Vec2(10.0f / PTM_RATIO, 15.2f / PTM_RATIO),
 b2Vec2(8.0f / PTM_RATIO, 7.2f / PTM_RATIO),
 b2Vec2(2.5f / PTM_RATIO, 4.5f / PTM_RATIO),
 b2Vec2(2.5f / PTM_RATIO, 1.2f / PTM_RATIO),
 b2Vec2(9.0f / PTM_RATIO, -1.2f / PTM_RATIO),
 b2Vec2(13.8f / PTM_RATIO, 2.5f / PTM_RATIO),
 b2Vec2(15.8f / PTM_RATIO, 4.2f / PTM_RATIO),
 b2Vec2(19.3f / PTM_RATIO, 0.2f / PTM_RATIO),
 b2Vec2(19.0f / PTM_RATIO, -8.7f / PTM_RATIO),
 b2Vec2(11.5f / PTM_RATIO, -9.0f / PTM_RATIO),
 b2Vec2(7.5f / PTM_RATIO, -6.2f / PTM_RATIO),
 b2Vec2(8.5f / PTM_RATIO, -16.2f / PTM_RATIO),
 b2Vec2(6.5f / PTM_RATIO, -19.7f / PTM_RATIO),
 b2Vec2(8.5f / PTM_RATIO, -26.0f / PTM_RATIO),
 b2Vec2(12.5f / PTM_RATIO, -26.7f / PTM_RATIO),
 b2Vec2(13.0f / PTM_RATIO, -29.7f / PTM_RATIO),
 b2Vec2(4.5f / PTM_RATIO, -31.0f / PTM_RATIO),
 b2Vec2(5.0f / PTM_RATIO, -33.7f / PTM_RATIO),
 b2Vec2(-3.7f / PTM_RATIO, -33.2f / PTM_RATIO)
 };
 
 //row 1, col 4
 int num = 32;
 b2Vec2 verts[] = {
 b2Vec2(-3.5f / PTM_RATIO, -32.5f / PTM_RATIO),
 b2Vec2(-4.2f / PTM_RATIO, -26.2f / PTM_RATIO),
 b2Vec2(-3.2f / PTM_RATIO, -21.0f / PTM_RATIO),
 b2Vec2(-3.0f / PTM_RATIO, -9.7f / PTM_RATIO),
 b2Vec2(-2.0f / PTM_RATIO, 0.5f / PTM_RATIO),
 b2Vec2(-9.0f / PTM_RATIO, 5.5f / PTM_RATIO),
 b2Vec2(-17.0f / PTM_RATIO, 12.2f / PTM_RATIO),
 b2Vec2(-17.5f / PTM_RATIO, 20.5f / PTM_RATIO),
 b2Vec2(-6.2f / PTM_RATIO, 33.7f / PTM_RATIO),
 b2Vec2(-3.7f / PTM_RATIO, 29.5f / PTM_RATIO),
 b2Vec2(6.0f / PTM_RATIO, 23.2f / PTM_RATIO),
 b2Vec2(8.3f / PTM_RATIO, 16.0f / PTM_RATIO),
 b2Vec2(13.5f / PTM_RATIO, 14.5f / PTM_RATIO),
 b2Vec2(9.8f / PTM_RATIO, 6.7f / PTM_RATIO),
 b2Vec2(4.5f / PTM_RATIO, 4.0f / PTM_RATIO),
 b2Vec2(8.5f / PTM_RATIO, 3.5f / PTM_RATIO),
 b2Vec2(16.0f / PTM_RATIO, 4.2f / PTM_RATIO),
 b2Vec2(20.0f / PTM_RATIO, 7.7f / PTM_RATIO),
 b2Vec2(22.5f / PTM_RATIO, 5.2f / PTM_RATIO),
 b2Vec2(22.0f / PTM_RATIO, -1.0f / PTM_RATIO),
 b2Vec2(19.0f / PTM_RATIO, -1.2f / PTM_RATIO),
 b2Vec2(22.5f / PTM_RATIO, -4.2f / PTM_RATIO),
 b2Vec2(21.8f / PTM_RATIO, -8.7f / PTM_RATIO),
 b2Vec2(17.3f / PTM_RATIO, -9.7f / PTM_RATIO),
 b2Vec2(10.8f / PTM_RATIO, -8.7f / PTM_RATIO),
 b2Vec2(10.5f / PTM_RATIO, -14.5f / PTM_RATIO),
 b2Vec2(12.5f / PTM_RATIO, -13.7f / PTM_RATIO),
 b2Vec2(8.5f / PTM_RATIO, -20.7f / PTM_RATIO),
 b2Vec2(11.5f / PTM_RATIO, -30.7f / PTM_RATIO),
 b2Vec2(16.5f / PTM_RATIO, -33.5f / PTM_RATIO),
 b2Vec2(5.8f / PTM_RATIO, -33.5f / PTM_RATIO),
 b2Vec2(-3.0f / PTM_RATIO, -31.7f / PTM_RATIO)
 };
 
 //row 1, col 5
 int num = 27;
 b2Vec2 verts[] = {
 b2Vec2(0.8f / PTM_RATIO, -30.8f / PTM_RATIO),
 b2Vec2(-0.9f / PTM_RATIO, -20.3f / PTM_RATIO),
 b2Vec2(-5.0f / PTM_RATIO, -17.3f / PTM_RATIO),
 b2Vec2(-3.9f / PTM_RATIO, -9.2f / PTM_RATIO),
 b2Vec2(-2.0f / PTM_RATIO, 0.7f / PTM_RATIO),
 b2Vec2(-14.7f / PTM_RATIO, 12.9f / PTM_RATIO),
 b2Vec2(-15.1f / PTM_RATIO, 20.7f / PTM_RATIO),
 b2Vec2(-6.8f / PTM_RATIO, 29.2f / PTM_RATIO),
 b2Vec2(-5.0f / PTM_RATIO, 32.9f / PTM_RATIO),
 b2Vec2(-1.1f / PTM_RATIO, 30.2f / PTM_RATIO),
 b2Vec2(9.8f / PTM_RATIO, 22.5f / PTM_RATIO),
 b2Vec2(10.5f / PTM_RATIO, 16.1f / PTM_RATIO),
 b2Vec2(13.6f / PTM_RATIO, 15.2f / PTM_RATIO),
 b2Vec2(12.5f / PTM_RATIO, 11.5f / PTM_RATIO),
 b2Vec2(18.5f / PTM_RATIO, 3.7f / PTM_RATIO),
 b2Vec2(8.4f / PTM_RATIO, -1.1f / PTM_RATIO),
 b2Vec2(10.7f / PTM_RATIO, -4.2f / PTM_RATIO),
 b2Vec2(17.6f / PTM_RATIO, -7.8f / PTM_RATIO),
 b2Vec2(20.6f / PTM_RATIO, -5.5f / PTM_RATIO),
 b2Vec2(23.1f / PTM_RATIO, -12.9f / PTM_RATIO),
 b2Vec2(18.7f / PTM_RATIO, -15.2f / PTM_RATIO),
 b2Vec2(10.7f / PTM_RATIO, -11.3f / PTM_RATIO),
 b2Vec2(9.3f / PTM_RATIO, -21.0f / PTM_RATIO),
 b2Vec2(9.3f / PTM_RATIO, -31.5f / PTM_RATIO),
 b2Vec2(11.8f / PTM_RATIO, -33.6f / PTM_RATIO),
 b2Vec2(2.9f / PTM_RATIO, -33.9f / PTM_RATIO),
 b2Vec2(-0.2f / PTM_RATIO, -30.2f / PTM_RATIO)
 };
 
 //row 1, col 6
 int num = 34;
 b2Vec2 verts[] = {
 b2Vec2(-2.8f / PTM_RATIO, -32.7f / PTM_RATIO),
 b2Vec2(-4.4f / PTM_RATIO, -19.8f / PTM_RATIO),
 b2Vec2(-6.9f / PTM_RATIO, -18.0f / PTM_RATIO),
 b2Vec2(-5.5f / PTM_RATIO, -7.2f / PTM_RATIO),
 b2Vec2(-3.2f / PTM_RATIO, -1.4f / PTM_RATIO),
 b2Vec2(-7.1f / PTM_RATIO, 5.1f / PTM_RATIO),
 b2Vec2(-14.7f / PTM_RATIO, 12.0f / PTM_RATIO),
 b2Vec2(-14.3f / PTM_RATIO, 20.5f / PTM_RATIO),
 b2Vec2(-4.4f / PTM_RATIO, 32.9f / PTM_RATIO),
 b2Vec2(-0.4f / PTM_RATIO, 33.1f / PTM_RATIO),
 b2Vec2(0.3f / PTM_RATIO, 29.9f / PTM_RATIO),
 b2Vec2(10.1f / PTM_RATIO, 22.6f / PTM_RATIO),
 b2Vec2(10.8f / PTM_RATIO, 14.7f / PTM_RATIO),
 b2Vec2(12.9f / PTM_RATIO, 13.8f / PTM_RATIO),
 b2Vec2(11.8f / PTM_RATIO, 6.7f / PTM_RATIO),
 b2Vec2(7.8f / PTM_RATIO, 2.8f / PTM_RATIO),
 b2Vec2(12.2f / PTM_RATIO, 3.2f / PTM_RATIO),
 b2Vec2(16.4f / PTM_RATIO, 4.4f / PTM_RATIO),
 b2Vec2(18.4f / PTM_RATIO, 7.4f / PTM_RATIO),
 b2Vec2(20.1f / PTM_RATIO, -0.9f / PTM_RATIO),
 b2Vec2(18.0f / PTM_RATIO, -2.1f / PTM_RATIO),
 b2Vec2(19.3f / PTM_RATIO, -3.9f / PTM_RATIO),
 b2Vec2(22.4f / PTM_RATIO, -5.8f / PTM_RATIO),
 b2Vec2(21.4f / PTM_RATIO, -10.3f / PTM_RATIO),
 b2Vec2(15.9f / PTM_RATIO, -10.4f / PTM_RATIO),
 b2Vec2(15.0f / PTM_RATIO, -12.0f / PTM_RATIO),
 b2Vec2(8.8f / PTM_RATIO, -11.7f / PTM_RATIO),
 b2Vec2(7.8f / PTM_RATIO, -13.8f / PTM_RATIO),
 b2Vec2(7.6f / PTM_RATIO, -20.0f / PTM_RATIO),
 b2Vec2(6.2f / PTM_RATIO, -28.1f / PTM_RATIO),
 b2Vec2(10.6f / PTM_RATIO, -28.3f / PTM_RATIO),
 b2Vec2(10.4f / PTM_RATIO, -31.3f / PTM_RATIO),
 b2Vec2(6.4f / PTM_RATIO, -33.6f / PTM_RATIO),
 b2Vec2(-3.9f / PTM_RATIO, -32.5f / PTM_RATIO)
 };
 
 //row 1, col 7
 int num = 27;
 b2Vec2 verts[] = {
 b2Vec2(-6.3f / PTM_RATIO, -31.6f / PTM_RATIO),
 b2Vec2(-5.3f / PTM_RATIO, -24.0f / PTM_RATIO),
 b2Vec2(-8.4f / PTM_RATIO, -16.6f / PTM_RATIO),
 b2Vec2(-7.6f / PTM_RATIO, -8.7f / PTM_RATIO),
 b2Vec2(-5.4f / PTM_RATIO, 0.7f / PTM_RATIO),
 b2Vec2(-6.3f / PTM_RATIO, 4.2f / PTM_RATIO),
 b2Vec2(-14.3f / PTM_RATIO, 12.2f / PTM_RATIO),
 b2Vec2(-15.2f / PTM_RATIO, 21.2f / PTM_RATIO),
 b2Vec2(-3.8f / PTM_RATIO, 33.8f / PTM_RATIO),
 b2Vec2(-0.1f / PTM_RATIO, 30.1f / PTM_RATIO),
 b2Vec2(8.9f / PTM_RATIO, 22.3f / PTM_RATIO),
 b2Vec2(9.2f / PTM_RATIO, 14.5f / PTM_RATIO),
 b2Vec2(11.5f / PTM_RATIO, 13.1f / PTM_RATIO),
 b2Vec2(10.7f / PTM_RATIO, 6.0f / PTM_RATIO),
 b2Vec2(18.8f / PTM_RATIO, 2.8f / PTM_RATIO),
 b2Vec2(17.7f / PTM_RATIO, 0.4f / PTM_RATIO),
 b2Vec2(20.2f / PTM_RATIO, -3.0f / PTM_RATIO),
 b2Vec2(19.3f / PTM_RATIO, -6.5f / PTM_RATIO),
 b2Vec2(17.2f / PTM_RATIO, -7.8f / PTM_RATIO),
 b2Vec2(7.8f / PTM_RATIO, -6.5f / PTM_RATIO),
 b2Vec2(6.1f / PTM_RATIO, -16.6f / PTM_RATIO),
 b2Vec2(7.1f / PTM_RATIO, -30.1f / PTM_RATIO),
 b2Vec2(11.5f / PTM_RATIO, -30.8f / PTM_RATIO),
 b2Vec2(12.1f / PTM_RATIO, -33.1f / PTM_RATIO),
 b2Vec2(2.2f / PTM_RATIO, -32.9f / PTM_RATIO),
 b2Vec2(0.2f / PTM_RATIO, -32.5f / PTM_RATIO),
 b2Vec2(-6.5f / PTM_RATIO, -31.1f / PTM_RATIO)
 };
 
 //row 1, col 8
 int num = 34;
 b2Vec2 verts[] = {
 b2Vec2(-5.0f / PTM_RATIO, -31.1f / PTM_RATIO),
 b2Vec2(-4.3f / PTM_RATIO, -25.1f / PTM_RATIO),
 b2Vec2(-2.2f / PTM_RATIO, -23.0f / PTM_RATIO),
 b2Vec2(-2.7f / PTM_RATIO, -17.0f / PTM_RATIO),
 b2Vec2(-2.0f / PTM_RATIO, -9.0f / PTM_RATIO),
 b2Vec2(0.1f / PTM_RATIO, 4.1f / PTM_RATIO),
 b2Vec2(-6.1f / PTM_RATIO, 12.2f / PTM_RATIO),
 b2Vec2(-6.4f / PTM_RATIO, 21.9f / PTM_RATIO),
 b2Vec2(5.8f / PTM_RATIO, 29.9f / PTM_RATIO),
 b2Vec2(7.5f / PTM_RATIO, 32.4f / PTM_RATIO),
 b2Vec2(11.9f / PTM_RATIO, 31.6f / PTM_RATIO),
 b2Vec2(12.1f / PTM_RATIO, 28.3f / PTM_RATIO),
 b2Vec2(18.3f / PTM_RATIO, 21.7f / PTM_RATIO),
 b2Vec2(18.0f / PTM_RATIO, 12.9f / PTM_RATIO),
 b2Vec2(19.7f / PTM_RATIO, 10.3f / PTM_RATIO),
 b2Vec2(18.3f / PTM_RATIO, 5.3f / PTM_RATIO),
 b2Vec2(20.8f / PTM_RATIO, 4.1f / PTM_RATIO),
 b2Vec2(21.8f / PTM_RATIO, -1.6f / PTM_RATIO),
 b2Vec2(13.0f / PTM_RATIO, -5.1f / PTM_RATIO),
 b2Vec2(17.1f / PTM_RATIO, -7.6f / PTM_RATIO),
 b2Vec2(20.8f / PTM_RATIO, -6.7f / PTM_RATIO),
 b2Vec2(21.7f / PTM_RATIO, -10.4f / PTM_RATIO),
 b2Vec2(17.4f / PTM_RATIO, -14.7f / PTM_RATIO),
 b2Vec2(12.7f / PTM_RATIO, -12.2f / PTM_RATIO),
 b2Vec2(11.9f / PTM_RATIO, -31.5f / PTM_RATIO),
 b2Vec2(16.4f / PTM_RATIO, -31.1f / PTM_RATIO),
 b2Vec2(16.9f / PTM_RATIO, -33.2f / PTM_RATIO),
 b2Vec2(7.0f / PTM_RATIO, -33.4f / PTM_RATIO),
 b2Vec2(7.0f / PTM_RATIO, -26.2f / PTM_RATIO),
 b2Vec2(4.3f / PTM_RATIO, -22.8f / PTM_RATIO),
 b2Vec2(1.9f / PTM_RATIO, -29.9f / PTM_RATIO),
 b2Vec2(3.8f / PTM_RATIO, -31.8f / PTM_RATIO),
 b2Vec2(3.5f / PTM_RATIO, -33.6f / PTM_RATIO),
 b2Vec2(-5.2f / PTM_RATIO, -31.5f / PTM_RATIO)
 };
 
 
 
 

*/