//
//  Logger.h
//  19. Callbacks
//
//  Created by Marvin Labrador on 9/15/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject{
    NSMutableData *incomingData;
}
-(void)sayOuch:(NSTimer *)t;
@end
