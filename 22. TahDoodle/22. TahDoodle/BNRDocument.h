//
//  BNRDocument.h
//  22. TahDoodle
//
//  Created by Marvin Labrador on 9/16/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface BNRDocument : NSDocument <NSTableViewDataSource>
{
    NSMutableArray *todoItems;
    IBOutlet NSTableView *itemTableView;
}
-(IBAction)createNewItem:(id)sender;


@end
