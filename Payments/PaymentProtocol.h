//
//  PaymentGateway.h
//  Payments
//
//  Created by Andrew Solesa on 2017-03-11.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>
@class PaymentGateway;

@protocol PaymentProtocol <NSObject>

- (void) processPaymentAmount: (NSInteger) amount;

- (BOOL) canProcessPayment;

@end
