//
//  ViewController.m
//  TableView
//
//  Created by Michael Zuccarino on 9/29/14.
//  Copyright (c) 2014 Michael Zuccarino. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController
{
    NSArray *listOfTitles;
}

@synthesize myTable;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    listOfTitles = @[@"First",@"Second",@"Third",@"Fourth",@"Fifth"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    
    [cell.textLabel setText:[listOfTitles objectAtIndex:indexPath.row]];



    return cell;
}

@end
