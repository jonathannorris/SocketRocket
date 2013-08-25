//
//  SRB64_NSData.m
//  LaunchPad
//
//  Created by Jonathan Norris on 2013-08-25.
//  Copyright (c) 2013 Jonathan Norris. All rights reserved.
//

#import "SRB64_NSData.h"

@implementation SRB64_NSData

+ (NSString *)SR_stringByBase64Encoding:(NSData *)data
{
    size_t buffer_size = (([data length] * 3 + 2) / 2);
    
    char *buffer = (char *)malloc(buffer_size);
    
    int len = b64_ntop([data bytes], [data length], buffer, buffer_size);
    
    if (len == -1) {
        free(buffer);
        return nil;
    } else{
        return [[NSString alloc] initWithBytesNoCopy:buffer length:len encoding:NSUTF8StringEncoding freeWhenDone:YES];
    }
}

@end
