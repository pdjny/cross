//
//  crossAppDelegate.h
//  cross
//
//  Created by PHILIP JACOBS on 6/29/13.
//  Copyright (c) 2013 PHILIP JACOBS. All rights reserved.
//

#import <UIKit/UIKit.h>
@class View;

@interface crossAppDelegate : UIResponder <UIApplicationDelegate> {
	View *view;
	UIWindow *_window;
}

@property (strong, nonatomic) UIWindow *window;

@end
