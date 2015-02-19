//
//  TTListDataSource.m
//  Time-Tracker
//
//  Created by Christian Monson on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTListDataSource.h"
#import "TTProjectController.h"

@implementation TTListDataSource



-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[TTProjectController sharedInstance].projects count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ListCell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"ListCell"];
    }
    
    TTProject *project = [TTProjectController sharedInstance].projects[indexPath.row];
    
    cell.textLabel.text = project.title;
//    cell.detailTextLabel.text = project.projectTime;
    
    return cell;
}

@end
