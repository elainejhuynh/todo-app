//
//  A2TableViewController.h
//  Assignment2
//
//  Created by Elaine Huynh on 9/13/15.
//  Copyright (c) 2015 Elaine Huynh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface A2TableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray *dataMain;
@property (nonatomic, strong) NSMutableArray *dataDetail;

@property (nonatomic, strong) NSMutableArray *toDoMain;
@property (nonatomic, strong) NSMutableArray *toDoDetail;

@end
