//
//  ELTToDoItem.m
//  ELTToDo
//
//  Created by Patrick McConnell on 2/3/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import "ELTToDoItem.h"

@implementation ELTToDoItem

- (id)initWithTitle:(NSString *)title
              Notes:(NSString *)notes
{
  if (self = [super init]) {
    _title = title;
    _notes = notes;
    _completed = NO;
  }
  
  return self;
}


- (id)init
{
  return [self initWithTitle:@"unnamed" Notes:@""];
}


@end
