//
//  BNRAppDelegate.m
//  21. iTahDoodle
//
//  Created by Marvin Labrador on 9/15/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "BNRAppDelegate.h"

NSString *docPath()
{
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
    return [[pathList objectAtIndex:0]stringByAppendingPathComponent:@"data.td"];
}


@implementation BNRAppDelegate

#pragma mark - Application delegate callbacks

-(BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{

//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    // Override point for customization after application launch.
//    self.window.backgroundColor = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];
//    return YES;
        
        NSArray *plist = [NSArray arrayWithContentsOfFile:docPath()];
        if(plist){
            tasks = [plist mutableCopy];
        }
        else{
            tasks = [[NSMutableArray alloc]init];
        }
    
//      Is tasks empty?
    if([tasks count] == 0){
        //Put some strings in it
        [tasks addObject:@"Walk the dogs"];
        [tasks addObject:@"Feed the hogs"];
        [tasks addObject:@"Chop the logs"];
    }


// Create and configure the UIWindow instance
// A CGRect is a struct with an origin (x,y) and size (width, height)
CGRect windowFrame = [[UIScreen mainScreen]bounds];
UIWindow *theWindow = [[UIWindow alloc] initWithFrame:windowFrame];
[self setWindow:theWindow];

//Defint the frame rectangles of the three UI elements
//CGRectMake() creates a CGRect from (x,y, width, height)
CGRect tableFrame = CGRectMake(0, 80, 320, 380);
CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
CGRect buttonFrame = CGRectMake(228, 40, 72, 31);

//Create and configure the tableView
taskTable = [[UITableView alloc]initWithFrame:tableFrame
                                        style: UITableViewStylePlain];

[taskTable setSeparatorStyle: UITableViewCellSeparatorStyleNone];
    
// Make this object the table view's dataSource
    [taskTable setDataSource:self];

// Create and configure the text field where new tasks will be typed
taskField = [[UITextField alloc]initWithFrame:fieldFrame];
[taskField setBorderStyle: UITextBorderStyleRoundedRect];
[taskField setPlaceholder: @"Type a task, tap Insert"];

// Create and configure a rounded rect Insert button
insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
[insertButton setFrame: buttonFrame];

// Buttons behave using a target/action callback
// Configure the Insert button's action to call this object's -addTask: method
[insertButton addTarget:self
                 action:@selector(addTask:)
       forControlEvents:UIControlEventTouchUpInside];

// Give the button a title
[insertButton setTitle:@"Insert"
              forState:UIControlStateNormal];

// Add our three UI elements to the window
[[self window]addSubview:taskTable];
[[self window]addSubview:taskField];
[[self window]addSubview:insertButton];

// Finalize the window and put it on the screen
[[self window] setBackgroundColor:[UIColor whiteColor]];
[[self window] makeKeyAndVisible];
return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
