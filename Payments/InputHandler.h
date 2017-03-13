//
//  InputHandler.h
//  Payments
//
//  Created by Andrew Solesa on 2017-03-11.
//  Copyright © 2017 KSG. All rights reserved.
//

#ifndef InputHandler_h
#define InputHandler_h

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

- (NSString *) ConvertInput;

- (NSInteger) ConvertInputToInteger;

@end

#endif /* InputHandler_h */
