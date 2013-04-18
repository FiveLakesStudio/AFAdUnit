//
//  AppDelegate.h
//  AFAdUnitDemo
//
//  Created by Vincent on 01/03/13.
//  Copyright (c) 2013 Appsfire. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AFAdUnit.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate, AFAdUnitDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@end
