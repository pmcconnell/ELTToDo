//
//  ELTToDoItem.h
//  ELTToDo
//
//  Created by Patrick McConnell on 2/3/13.
//  Copyright (c) 2013 Patrick McConnell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ELTToDoItem : NSObject


@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *notes;
@property (nonatomic) Boolean completed;


@end
