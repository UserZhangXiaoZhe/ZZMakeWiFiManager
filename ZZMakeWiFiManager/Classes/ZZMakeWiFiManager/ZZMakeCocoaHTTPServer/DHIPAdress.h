
#import <Foundation/Foundation.h>
#include <ifaddrs.h>
#include <arpa/inet.h>

@interface DHIPAdress : NSObject

/*!
 * get device ip address
 */
+ (NSString *)deviceIPAdress;

@end
