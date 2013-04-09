//
//  ViewController.m
//  AFAdUnitDemo
//
//  Created by Vincent on 01/03/13.
//  Copyright (c) 2013 Appsfire. All rights reserved.
//

#import "ViewController.h"
#import "AFAdUnit.h"

@interface ViewController () {
    
    UIButton *_requestButton;
    
}
- (void)_requestButtonTouched;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];

    //
    [ self.view setBackgroundColor:[UIColor whiteColor] ];

    //
    _requestButton = [ UIButton buttonWithType:UIButtonTypeCustom ];
    [ _requestButton setAutoresizingMask:UIViewAutoresizingFlexibleLeftMargin|UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleBottomMargin ];
    [ _requestButton setFrame:CGRectMake(0.0, 0.0, 250.0, 44.0) ];
    [ _requestButton setCenter:self.view.center ];
    [ _requestButton setTitle:@"Request Modal Ad (no possible yet)" forState:UIControlStateNormal ];
    [ _requestButton setTitleColor:[ UIColor blackColor ] forState:UIControlStateNormal ];
    [ _requestButton setBackgroundColor:[ UIColor lightGrayColor ] ];
    [ _requestButton.titleLabel setFont:[ UIFont fontWithName:@"HelveticaNeue-CondensedBold" size:15.0 ] ];
    [ _requestButton addTarget:self action:@selector(_requestButtonTouched) forControlEvents:UIControlEventTouchUpInside ];
    [ _requestButton setEnabled:NO ];
    [ self.view addSubview:_requestButton ];
    
}

- (void)setModalAdIsAvailable:(BOOL)available {
    
    [ _requestButton setEnabled:YES ];
    [ _requestButton setTitle:@"Request Modal Ad" forState:UIControlStateNormal ];
    
}

- (void)_requestButtonTouched {

    // if you set a rootViewController to your key window, you could process like this
    // of course in this case, it's equivalent as setting "self"
    [ AFAdUnit requestModalAdWithController:[ UIApplication sharedApplication ].keyWindow.rootViewController ];
    
}

@end
