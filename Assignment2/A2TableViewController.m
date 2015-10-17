//
//  A2TableViewController.m
//  Assignment2
//
//  Created by Elaine Huynh on 9/13/15.
//  Copyright (c) 2015 Elaine Huynh. All rights reserved.
//

#import "A2TableViewController.h"

@interface A2TableViewController ()

@end

@implementation A2TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //  Return the number of rows in the section.
    if (section == 0) {
        return [_dataMain count];
    } else {
        return [_toDoMain count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (cell == nil) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    
    if (indexPath.section == 0) {
        NSString *mainTextToShow = [self.dataMain objectAtIndex:indexPath.row];
        cell.textLabel.text = mainTextToShow;
        
        NSString *detailTextToShow = [self.dataDetail objectAtIndex:indexPath.row];
        cell.detailTextLabel.text = detailTextToShow;
    }
    else {
        NSString *mainTextToShow = [self.toDoMain objectAtIndex:indexPath.row];
        cell.textLabel.text = mainTextToShow;
        
        NSString *detailTextToShow = [self.toDoDetail objectAtIndex:indexPath.row];
        cell.detailTextLabel.text = detailTextToShow;
    }

    
    // Configure the cell...
    NSLog(@"My array at this moment is %@", self.dataMain);
    return cell;
}

- (void) tableView:(UITableView *) tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
    if (indexPath.section == 0) {
        NSString *mainObject = [self.dataMain objectAtIndex:indexPath.row];
        NSString *detailObject = [self.dataDetail objectAtIndex:indexPath.row];
        NSString *alertTitle = [NSString stringWithFormat:@"Item: %@", mainObject];
        NSString *alertDetail = [NSString stringWithFormat:@"Detail: %@", detailObject];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: alertTitle
                                                        message: alertDetail
                                                       delegate:self
                                              cancelButtonTitle:@"Okay"
                                              otherButtonTitles:nil];
        [alert show];
        
    }
    else {
        NSString *mainObject = [self.toDoMain objectAtIndex:indexPath.row];
        NSString *detailObject = [self.toDoDetail objectAtIndex:indexPath.row];
        NSString *alertTitle = [NSString stringWithFormat:@"Item: %@", mainObject];
        NSString *alertDetail = [NSString stringWithFormat:@"Detail: %@", detailObject];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle: alertTitle
                                                        message: alertDetail
                                                       delegate:self
                                              cancelButtonTitle:@"Okay"
                                              otherButtonTitles:nil];
        [alert show];
    }

}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
