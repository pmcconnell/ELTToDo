//
//  ELTViewController.h
//  ELTToDo
//
//  Created by Patrick McConnell on 2/3/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ELTToDoItem.h"

@protocol ELTTodDetailDelgate <NSObject>

-(void)toDoWasAdded:(ELTToDoItem *)todo;
-(void)toDoWasEdited:(ELTToDoItem *)todo;

@end


@interface ELTViewController : UIViewController

@property (weak, nonatomic) id<ELTTodDetailDelgate>delegate;

@property (weak, nonatomic) IBOutlet UITextField *toDoNameTextField;
@property (weak, nonatomic) IBOutlet UISwitch *toDoCompletedSwitch;
@property (weak, nonatomic) IBOutlet UITextView *toDoNotesTextView;

@property (strong, nonatomic) ELTToDoItem *toDoItem;

@property (nonatomic) Boolean editMode;

- (IBAction)saveButtonPressed:(id)sender;

@end
