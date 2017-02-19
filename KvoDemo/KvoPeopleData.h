//
//  KvoPeopleData.h
//  KvoDemo
//
//  Created by jinren on 19/02/2017.
//  Copyright © 2017 jinren. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KvoPeopleData : NSObject

@property (nonatomic, strong) NSString* className;
@property (nonatomic, strong) NSMutableArray* students;
@property (nonatomic, strong) NSArray* teachers;

- (IBAction)updateClassName:(id)sender;

- (IBAction)addStudent:(id)sender;

@end
