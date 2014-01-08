//
//  SRB64_NSData.h
//  Taplytics
//
//  Copyright (c) 2013 Syrp Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TL_SRB64_NSData : NSObject

+ (NSString *)SR_stringByBase64Encoding:(NSData*)data;

@end
