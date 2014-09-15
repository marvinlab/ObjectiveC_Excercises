//
//  BNRAppDelegate.h
//  21. iTahDoodle
//
//  Created by Marvin Labrador on 9/15/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <UIKit/UIKit.h>

NSString *docPath(void);

@interface BNRAppDelegate : UIResponder <UIApplicationDelegate, UITableViewDataSource>
{
    UITableView *taskTable;
    UITextField *taskField;
    UIButton *insertButton;
    
    NSMutableArray *tasks;
}
-(void)addTask:(id)sender;

@property (strong, nonatomic) UIWindow *window;

@end
