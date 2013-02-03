//
//  ELTViewController.h
//  ELTToDo
//
//  Created by Patrick McConnell on 2/3/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ELTToDoItem.h"

@interface ELTViewController : UIViewController


@property (weak, nonatomic) IBOutlet UITextField *toDoNameTextField;
@property (weak, nonatomic) IBOutlet UISwitch *toDoCompletedSwitch;
@property (weak, nonatomic) IBOutlet UITextView *toDoNotesTextView;

@property (strong, nonatomic) ELTToDoItem *toDoItem;

@end
