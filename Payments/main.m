//
//  main.m
//  Payments
//
//  Created by Andrew Solesa on 2017-03-11.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "StripePaymentService.h"
#import "PaypalPaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        NSInteger dollarValue = arc4random_uniform(100) + 100;
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment method by (ID): 1: Paypal, 2: Stripe, 3: Amazon", dollarValue);
        
        InputHandler *IHandler = [[InputHandler alloc]init];
        NSInteger convertedInputInteger = [IHandler ConvertInputToInteger];
        
        // for now goes into switch?
        
        PaymentGateway *payment = [[PaymentGateway alloc] init];
        
        PaypalPaymentService *paypal = [PaypalPaymentService new];
        StripePaymentService *stripe = [StripePaymentService new];
        AmazonPaymentService *amazon = [AmazonPaymentService new];
        
        switch(convertedInputInteger)
        {
            case 1:
                payment.paymentDelegate = paypal; // assign
                break;
                
            case 2:
                payment.paymentDelegate = stripe;
                break;
                
            case 3:
                payment.paymentDelegate = amazon;
                break;
        }
        
        [payment redirectPayment:dollarValue];
    }
    return 0;
}
