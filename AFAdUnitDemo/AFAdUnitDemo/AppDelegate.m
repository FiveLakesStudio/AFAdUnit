//
//  AppDelegate.m
//  AFAdUnitDemo
//
//  Created by Vincent on 01/03/13.
//  Copyright (c) 2013 Appsfire. All rights reserved.
//

#import "AppDelegate.h"
#import "AFAppBoosterSDK.h"
#import "ViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // connect app booster sdk
    #error Please insert here your App Booster API key
    [AFAppBoosterSDK connectWithAPIKey:@"INSERT YOUR API KEY HERE"];
    
    // here you can use the debug mode
    // it'll display "appsfire" app so you can test Ad Unit in your application
    // we suggest you to keep the #id/#endif to avoid any problem in your submitted build
    #if DEBUG
        #warning Replace by `YES` if you want to enable the debug mode
        [AFAdUnit setDebugModeEnabled:NO];
    #endif

    // subscribe to events from ad unit (optional)
    [AFAdUnit setDelegate:self];
    
    // decide to use in-app download when it's possible (optional)
    // it won't work if the iOS used is < 6.0
    [AFAdUnit setUseInAppDownloadWhenPossible:YES];
    
    // tell ad unit to prepare
    // this method will be automatically called if you do a request
    [AFAdUnit prepare];
    
    // create window & root controller
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [[ViewController alloc] init];
    self.window.rootViewController = self.viewController;
    
    // make window visible
    [self.window makeKeyAndVisible];
    
    return YES;
    
}

#pragma mark -
#pragma mark AF Ad Unit Delegate

- (void)modalAdRequestDidFailWithError:(NSError *)error {
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    NSLog(@"Localized Description = %@", error.localizedDescription);
    
    // optional, you can implement a reaction
    switch (error.code) {
            
        case AFAdUnitErrorCodeBadCall:
            //
            break;
            
        case AFAdUnitErrorCodeNoAd:
            //
            break;
            
        case AFAdUnitErrorCodeAdAlreadyDisplayed:
            //
            break;
            
        default:
            break;
            
    }
    
}

- (void)adUnitDidInitialize {
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
        
}

- (void)modalAdIsReadyForRequest {
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    // here you could directly request the display of the modal
    //[ AFAdUnit requestModalAdWithController:self.viewController ];
    [ self.viewController setModalAdIsAvailable:YES ];
    
}

- (void)modalAdWillAppear {
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
        
}

- (void)modalAdWillDisappear {
    
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
}

@end
