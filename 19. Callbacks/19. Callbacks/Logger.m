//
//  Logger.m
//  19. Callbacks
//
//  Created by Marvin Labrador on 9/15/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "Logger.h"

@implementation Logger

-(void)sayOuch:(NSTimer *)t
{
    NSLog(@"Ouch");
}

-(void)connection:(NSURLConnection *)connection
didReceiveData:(NSData *)data
{
    NSLog(@"receive %lu bytes", [data length]);
    
    // Create a mutable data if it doesn't already exist
    if (!incomingData) {
        incomingData = [[NSMutableData alloc]init];
    }
    
    [incomingData appendData:data];
  
}

// Called when the last chunk has been processed
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all");

    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"string has %lu characters", [string length]);
    
    //Uncomment the next line to see the entire fetched file
    //NSLog(@"The whole string is \n%@", string);
    
}

//Called if the fetch fails
-(void)connection:(NSURLConnection *) connection
didFailWithError:(NSError *)error
{
    NSLog(@"connection failed: %@", [error localizedDescription]);
    incomingData = nil;
    
}
@end
