//
//  TTProjectController.m
//  Time-Tracker
//
//  Created by Christian Monson on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTProjectController.h"

static NSString * const projectListKey = @"projectkey";

@interface TTProjectController ()

@property (nonatomic,strong)NSArray *projects;

@end

@implementation TTProjectController

+ (TTProjectController *)sharedInstance {
    static TTProjectController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [TTProjectController new];
    });
    return sharedInstance;

}

- (void)addProject:(TTProject *) project {
    
}

- (void)removeProject:(TTProject *) project {
    
}

- (void)loadFromDefaults {
    
    NSArray *projectDictionaries = [[NSUserDefaults standardUserDefaults] objectForKey:projectListKey];
    
    NSMutableArray *projects = [NSMutableArray new];
    for (NSDictionary *project in projectDictionaries) {
        [projects addObject:[[TTProject alloc]initWithDictionary:project]];
    }
    self.projects = projects;
}

- (void)synchronize {
    
    NSMutableArray *projectDictionaries = [NSMutableArray new];
    for (TTProject *project in self.projects) {
        [projectDictionaries addObject:[project projectDictionary]];
    }
    
    [[NSUserDefaults standardUserDefaults] setObject:projectDictionaries forKey:projectListKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}

@end
