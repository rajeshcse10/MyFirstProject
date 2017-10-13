//
//  ViewController.m
//  MyFirstProject
//
//  Created by MacBook Pro Retina on 9/15/17.
//  Copyright © 2017 MacBook Pro Retina. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property(nonatomic,strong) NSArray *dataArry;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mTableView.delegate = self;
    self.mTableView.dataSource = self;
    self.mLabel.text = @"Rajesh Karmaker";
    self.dataArry = [NSArray arrayWithObjects:@"Apple",@"Orange",@"Banana",@"Jack fruit",@"Lemon", nil];
    // Do any additional setup after loading the view, typically from a nib.
}
#pragma mark UITableViewDataSource delegate methods
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataArry.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *identifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier forIndexPath:indexPath];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    cell.textLabel.text = [self.dataArry objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = @"Fruit";
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
