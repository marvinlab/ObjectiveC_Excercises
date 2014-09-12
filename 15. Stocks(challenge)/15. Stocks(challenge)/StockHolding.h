//
//  StockHolding.h
//  15. Stocks(challenge)
//
//  Created by Marvin Labrador on 9/11/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
    float purchaseSharePrice, currentSharePrice;
    int numberOfShares;
    float costInDollars;
}

-(float)costInDollars:(float)purchaseSharePrice; //(int)numberOfShares;
-(float)valueInDollars:(float)value;

@end
