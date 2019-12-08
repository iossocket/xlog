//
//  MarsXLogger.h
//  Pods
//
//  Created by ZhuXueliang on 2019/12/8.
//

#import <Foundation/Foundation.h>
#import "XLogger.h"

@interface MarsXLogger : NSObject<XLogger>

+ (instancetype)sharedInstance;

@end
