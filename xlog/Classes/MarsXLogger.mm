//
//  MarsXLogger.m
//  Pods
//
//  Created by ZhuXueliang on 2019/12/8.
//

#import "MarsXLogger.h"
#import <mars/xlog/xlogger.h>
#import <mars/xlog/xloggerbase.h>
#import <mars/xlog/appender.h>
#import "Utils/LogUtil.h"

@interface MarsXLogger()

@property(nonatomic, strong) NSString *logFolderPath;

@end

@implementation MarsXLogger

+ (instancetype)sharedInstance {
    static MarsXLogger *logger = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        logger = [self new];
    });
    return logger;
}

- (instancetype)init {
    if (self = [super init]) {
        self.logFolderPath = [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingString:@"/marslogger"];
        NSLog(@"%@", self.logFolderPath);
        xlogger_SetLevel(kLevelInfo);
#ifdef DEBUG
        appender_set_console_log(true);
#endif
        appender_open(kAppednerAsync, [self.logFolderPath UTF8String], "marslogger", "");
    }
    return self;
}

- (void)info:(NSString *)tag msg:(NSString *)msg {
    LOG_INFO([tag UTF8String], msg);
}

- (void)warning:(NSString *)tag msg:(NSString *)msg {
    LOG_WARNING([tag UTF8String], msg);
}

- (void)error:(NSString *)tag msg:(NSString *)msg {
    LOG_ERROR([tag UTF8String], msg);
}

- (void)flush {
    appender_flush();
}

@end
