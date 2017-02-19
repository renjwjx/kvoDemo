//
//  KvoPeopleData.m
//  KvoDemo
//
//  Created by jinren on 19/02/2017.
//  Copyright © 2017 jinren. All rights reserved.
//

#import "KvoPeopleData.h"

@implementation KvoPeopleData


- (id)init
{
    self = [super init];
    if (self) {
        self.className = @"中三班";
        self.students = [[NSMutableArray alloc] initWithCapacity:10];
        self.teachers = [NSArray arrayWithObject:@"Teacher1"];
    }
    return self;
}

- (IBAction)updateClassName:(id)sender
{
    self.className = [self.className stringByAppendingString:@"-0 "];
    NSLog(@"updateClassName: %@, className: %@", self, self.className);
}

- (IBAction)addStudent:(id)sender
{
//option1:
#if 0
    //must trigger will/did change manually, as the students is mutable array. addobject don't change mutablearray.
    [self willChangeValueForKey:@"students"];
    [self.students addObject:self.className];
    [self didChangeValueForKey:@"students"];
#else
//options2:
    [[self mutableArrayValueForKey:@"students"] insertObject:self.className atIndex:0];
#endif
    NSLog(@"addStudent: %@, className: %@", self, self.students);
}

//this function can set the notification for @"students", when className change
+ (NSSet*)keyPathsForValuesAffectingStudents
{
    return [NSSet setWithObject:@"className"];
}

- (IBAction)addTeacher:(id)sender
{
    self.teachers = [NSArray arrayWithArray:self.teachers];
    NSLog(@"addTeacher: %@, className: %@", self, self.teachers);
}

@end
