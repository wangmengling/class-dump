#import "NSString-Extensions.h"

#import <Foundation/Foundation.h>

@implementation NSString (CDExtensions)

- (id)initWithCString:(const char *)bytes maximumLength:(unsigned int)maximumLength;
{
    char *buf;

    buf = alloca(maximumLength + 1);
    if (buf == NULL) {
        [self release];
        return nil;
    }

    strncpy(buf, bytes, maximumLength);
    buf[maximumLength] = 0;

    return [self initWithCString:buf];
}

@end
