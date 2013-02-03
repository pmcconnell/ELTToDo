//
//  ELTToDoItem.m
//  ELTToDo
//
//  Created by Patrick McConnell on 2/3/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import "ELTToDoItem.h"

@implementation ELTToDoItem

- (id)init
{
  if (self= [super init]) {
    _title = @"unnamed";
    _notes = @"FOO";
    _completed = NO;
  }
  
  return self;
}

@end
