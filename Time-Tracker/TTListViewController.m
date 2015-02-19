//
//  TTListViewController.m
//  Time-Tracker
//
//  Created by Christian Monson on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTListViewController.h"
#import "TTListDataSource.h"

@interface TTListViewController ()

@property (nonatomic, strong)TTListDataSource *dataSource;
@property (nonatomic, strong)UITableView *tableView;

@end

@implementation TTListViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dataSource = [TTListDataSource new];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.tableView];
    
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
