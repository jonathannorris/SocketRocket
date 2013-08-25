//
//  SRB64_NSData.h
//  LaunchPad
//
//  Created by Jonathan Norris on 2013-08-25.
//  Copyright (c) 2013 Jonathan Norris. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SRB64_NSData : NSObject

+ (NSString *)SR_stringByBase64Encoding:(NSData*)data;

@end
