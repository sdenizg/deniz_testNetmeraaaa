//
//  NetmeraRegisterEvent.h
//  Pods
//
//  Created by Yavuz Nuzumlali on 02/09/15.
//
//

#import <NetmeraCore/NetmeraEvent.h>

@interface NetmeraRegisterEvent : NetmeraEvent

@property (nonatomic, copy, readonly) NSString *userId;

+ (instancetype)eventWithUserId:(NSString *)userId;

@end
