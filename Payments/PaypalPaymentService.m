//
//  PaypalPaymentService.m
//  Payments
//
//  Created by Andrew Solesa on 2017-03-11.
//  Copyright © 2017 KSG. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

- (void) processPaymentAmount: (NSInteger) amount
{
    NSLog(@"Paypal has processed %ld", amount);
}

- (BOOL) canProcessPayment
{
    return arc4random_uniform(2);
}

@end
