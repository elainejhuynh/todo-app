//
//  ViewController.m
//  Assignment2
//
//  Created by Elaine Huynh on 9/13/15.
//  Copyright (c) 2015 Elaine Huynh. All rights reserved.
//

#import "ViewController.h"
#import "A2TableViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *mainText;

@property (weak, nonatomic) IBOutlet UITextField *detailText;

@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;


@property A2TableViewController *tvc;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.segment.tintColor = [UIColor colorWithRed:0.94 green:0.45 blue:0.45 alpha:1.0];
    
    self.view.backgroundColor = [UIColor colorWithRed:0.64 green:0.81 blue:0.96 alpha:1.0];
     
    self.titleLabel.text = @"Organizer Application";
    
    self.mainText.placeholder = @"Main Text";
    self.detailText.placeholder = @"Detail Text";
    
    [self.segment setTitle:@"To Buy" forSegmentAtIndex:0];
    [self.segment setTitle:@"To Do" forSegmentAtIndex:1];
    
    self.tvc = [[A2TableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    
    self.tvc.dataMain = [[NSMutableArray alloc] init];
    self.tvc.dataDetail = [[NSMutableArray alloc] init];
    
    self.tvc.toDoMain = [[NSMutableArray alloc] init];
    self.tvc.toDoDetail = [[NSMutableArray alloc] init];

}
- (IBAction)addToListButtonPressed:(id)sender {
    NSString *main = self.mainText.text;
    NSString *detail = self.detailText.text;
    
    if (self.segment.selectedSegmentIndex == 0) {
        [self.tvc.dataMain addObject:main];
        NSLog(@"Main List: \n%@", self.tvc.dataMain);
        
        [self.tvc.dataDetail addObject:detail];
        NSLog(@"Detail List: \n%@", self.tvc.dataDetail);
    }
    
    else {
        [self.tvc.toDoMain addObject:main];
        NSLog(@"Main List: \n%@", self.tvc.toDoMain);
        
        [self.tvc.toDoDetail addObject:detail];
        NSLog(@"Detail List: \n%@", self.tvc.toDoDetail);
    }
    
    self.mainText.text = @"";
    self.detailText.text = @"";
}

- (IBAction)showListButtonPressed:(id)sender {
    
    [self presentViewController:self.tvc animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
