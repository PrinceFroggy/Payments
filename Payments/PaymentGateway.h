//
//  PaymentGateway.h
//  Payments
//
//  Created by Andrew Solesa on 2017-03-11.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentProtocol.h"

@interface PaymentGateway : NSObject

@property (nonatomic, weak) id <PaymentProtocol> paymentDelegate;

- (void) redirectPayment : (NSInteger) amount;

@end
