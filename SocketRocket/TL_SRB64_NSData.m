//
//  SRB64_NSData.m
//  Taplytics
//
//  Copyright (c) 2013 Syrp Inc. All rights reserved.
//

#import "TL_SRB64_NSData.h"
#import "TL_base64.h"

@implementation TL_SRB64_NSData

+ (NSString *)SR_stringByBase64Encoding:(NSData *)data
{
    size_t buffer_size = (([data length] * 3 + 2) / 2);
    
    char *buffer = (char *)malloc(buffer_size);
    
    int len = TL_b64_ntop([data bytes], [data length], buffer, buffer_size);
    
    if (len == -1) {
        free(buffer);
        return nil;
    } else{
        return [[NSString alloc] initWithBytesNoCopy:buffer length:len encoding:NSUTF8StringEncoding freeWhenDone:YES];
    }
}

@end
