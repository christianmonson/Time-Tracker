//
//  TTDetailViewController.h
//  Time-Tracker
//
//  Created by Christian Monson on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TTProject;

@interface TTDetailViewController : UIViewController

@property (nonatomic, strong) TTProject *project;

@end
