//
//  ELTToDoTableViewController.m
//  ELTToDo
//
//  Created by Patrick McConnell on 2/3/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import "ELTToDoTableViewController.h"
#import "ELTToDoItem.h"
#import "ELTViewController.h"

@interface ELTToDoTableViewController ()
@property (strong, nonatomic) NSMutableArray *toDos;
@end

@implementation ELTToDoTableViewController


- (void)viewDidLoad
{
  [super viewDidLoad];
  
  _toDos = [NSMutableArray arrayWithCapacity:0];

  [_toDos addObject:[[ELTToDoItem alloc]initWithTitle:@"Wash Car" Notes: @"Its really dirty"]];
  [_toDos addObject:[[ELTToDoItem alloc]initWithTitle:@"Feed Dog" Notes: @""]];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  // Return the number of sections.
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  // Return the number of rows in the section.
  return [self.toDos count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  static NSString *CellIdentifier = @"toDoCell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
  
  // Configure the cell...
  
  ELTToDoItem *currentToDo = [self.toDos objectAtIndex:indexPath.row];
  
  NSLog(@"ToDo: %@", currentToDo);
  
  cell.textLabel.text = currentToDo.title;
  cell.detailTextLabel.text = currentToDo.completed ? @"Completed" : @"Not Completed";
  
  return cell;
}

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  ELTViewController *vc = segue.destinationViewController;
  if ([segue.identifier isEqualToString:@"toDoDetailSegue"]) {
    // showing an existing todo
    int row = [[self.tableView indexPathForSelectedRow]row];
    vc.toDoItem = [self.toDos objectAtIndex:row];
  } else if ([segue.identifier isEqualToString:@"toDoAddSegue"]) {
    // adding a new todo
    vc.toDoItem = [[ELTToDoItem alloc]init];
  }
}


@end
