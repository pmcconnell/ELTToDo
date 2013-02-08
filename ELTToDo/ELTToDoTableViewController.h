//
//  ELTToDoTableViewController.h
//  ELTToDo
//
//  Created by Patrick McConnell on 2/3/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ELTViewController.h"

@interface ELTToDoTableViewController : UITableViewController <ELTTodDetailDelgate>

- (IBAction)saveToDo:(UIStoryboardSegue *)segue;

@end
