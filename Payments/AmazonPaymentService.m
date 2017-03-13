//
//  AmazonPaymentService.m
//  Payments
//
//  Created by Andrew Solesa on 2017-03-11.
//  Copyright © 2017 KSG. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

- (void) processPaymentAmount: (NSInteger) amount
{
    NSLog(@"Amazon has processed %ld", amount);
}

- (BOOL) canProcessPayment
{
    return arc4random_uniform(2);
}

@end
