//
//  TTProjectController.h
//  Time-Tracker
//
//  Created by Christian Monson on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTProject.h"

@interface TTProjectController : NSObject

@property (nonatomic,strong,readonly) NSArray *projects;

+ (TTProjectController *) sharedInstance;

-(void)addProject:(TTProject *) project;
-(void)removeProject:(TTProject *) project;

-(void)synchronize;

@end
