//
//  ViewController.h
//  MyFirstProject
//
//  Created by MacBook Pro Retina on 9/15/17.
//  Copyright © 2017 MacBook Pro Retina. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UILabel *mLabel;
@property (weak, nonatomic) IBOutlet UITableView *mTableView;

@end

