//
//  CEAddressModel.h
//  AddressChoose
//
//  Created by zhouzhongliang on 2019/1/19.
//  Copyright © 2019 zhouzhongliang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CEAddressModel : NSObject

@property (nonatomic,copy) NSString *ID;
@property (nonatomic,copy) NSString *label;
@property (nonatomic,copy) NSString *pids;
@property (nonatomic,copy) NSString *type;
@property (nonatomic,copy) NSString *pid;
@property (nonatomic,strong) NSArray *list;

@end

NS_ASSUME_NONNULL_END
