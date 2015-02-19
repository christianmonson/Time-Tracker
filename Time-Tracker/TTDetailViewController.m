//
//  TTDetailViewController.m
//  Time-Tracker
//
//  Created by Christian Monson on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTDetailViewController.h"

@interface TTDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIToolbar *add;
@property (weak, nonatomic) IBOutlet UIToolbar *clockIn;
@property (weak, nonatomic) IBOutlet UIToolbar *clockOut;
@property (weak, nonatomic) IBOutlet UIToolbar *Report;

@end

@implementation TTDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (IBAction)add:(id)sender {
}

- (IBAction)clockIn:(id)sender {
}

- (IBAction)Out:(id)sender {
}

- (IBAction)Report:(id)sender {
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
