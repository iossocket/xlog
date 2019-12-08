//
//  XLogger.h
//  Pods
//
//  Created by ZhuXueliang on 2019/12/8.
//

#import <Foundation/Foundation.h>

@protocol XLogger <NSObject>

@required
- (void)info:(NSString *)tag msg:(NSString *)msg;
- (void)warning:(NSString *)tag msg:(NSString *)msg;
- (void)error:(NSString *)tag msg:(NSString *)msg;
- (void)flush;

@end
