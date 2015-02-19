//
//  TTProject.h
//  Time-Tracker
//
//  Created by Christian Monson on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTEntry.h"

@interface TTProject : NSObject

@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSArray *entries;

-(NSDictionary *)projectDictionary;
-(id)initWithDictionary:(NSDictionary *)dictionary;

-(void)addEntry:(TTEntry *)entry;
-(void)removeEntry:(TTEntry *) entry;


@end
