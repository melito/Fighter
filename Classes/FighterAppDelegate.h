//
//  FighterAppDelegate.h
//  Fighter
//
//  Created by Mel Gray on 7/7/10.
//  Copyright Clever Collie, LLC 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FighterAppDelegate : NSObject <UIApplicationDelegate> {
	UIWindow *window;
}

@property (nonatomic, retain) UIWindow *window;

+(id)fightScene;

@end
