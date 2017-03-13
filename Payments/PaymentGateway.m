//
//  PaymentGateway.m
//  Payments
//
//  Created by Andrew Solesa on 2017-03-11.
//  Copyright © 2017 KSG. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void) redirectPayment: (NSInteger) amount; {
    
    if([self.paymentDelegate canProcessPayment]) {
        
        [self.paymentDelegate processPaymentAmount:amount];
        
    }
    else
    {
        
        NSLog(@"\n\n SORRY COME AGAIN.");
    }
}

@end
