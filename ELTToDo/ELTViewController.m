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

@end
