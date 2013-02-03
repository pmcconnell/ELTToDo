//
//  ELTViewController.m
//  ELTToDo
//
//  Created by Patrick McConnell on 2/3/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import "ELTViewController.h"


@interface ELTViewController ()

@end

@implementation ELTViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  
//  _toDoItem = [[ELTToDoItem alloc]init];
  
  [self configureView];
  
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (void)configureView
{
  self.toDoNameTextField.text = self.toDoItem.title;
  self.toDoCompletedSwitch.on = self.toDoItem.completed;
  self.toDoNotesTextView.text = self.toDoItem.notes;
}

- (IBAction)saveButtonPressed:(id)sender {
  [self updateToDo];
  if (self.editMode) {
    [self.delegate toDoWasEdited:self.toDoItem];
  } else {
    [self.delegate toDoWasAdded:self.toDoItem];
  }
}

- (void)updateToDo
{
  self.toDoItem.title = self.toDoNameTextField.text;
  self.toDoItem.notes = self.toDoNotesTextView.text;
  self.toDoItem.completed = self.toDoCompletedSwitch.on;
}
@end
