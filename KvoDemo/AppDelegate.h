//
//  AppDelegate.h
//  KvoDemo
//
//  Created by jinren on 19/02/2017.
//  Copyright © 2017 jinren. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "KvoPeopleData.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (strong, nonatomic) IBOutlet KvoPeopleData* kvoData;

- (IBAction)showDebug:(id)sender;
@end

