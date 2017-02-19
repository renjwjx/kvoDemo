//
//  AppDelegate.m
//  KvoDemo
//
//  Created by jinren on 19/02/2017.
//  Copyright © 2017 jinren. All rights reserved.
//

#import "AppDelegate.h"
#import "KvoPeopleData.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    //kvoData is initialed through nib file
    [self.kvoData addObserver:self forKeyPath:@"className" options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld) context:nil];
    [self.kvoData addObserver:self forKeyPath:@"students" options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld) context:nil];
    [self.kvoData addObserver:self forKeyPath:@"teachers" options:(NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld) context:nil];

    NSLog(@"kvoData: %@", self.kvoData);
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context
{
    NSLog(@"keyPath: %@, object: %@, change: %@", keyPath, object, change);
    
}

- (IBAction)showDebug:(id)sender
{
    NSLog(@"log:");
}

@end
