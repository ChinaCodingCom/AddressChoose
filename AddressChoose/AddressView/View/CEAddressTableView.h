//
//  CEAddressTableView.h
//  AddressChoose
//
//  Created by zhouzhongliang on 2019/1/19.
//  Copyright © 2019 zhouzhongliang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^Block)(NSInteger row);

@interface CEAddressTableView : UIView <UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, copy) NSString *indexRow;

/**
 初始化
 
 @param frame frame
 @param params 数据
 @return self
 */
- (instancetype)initWithFrame:(CGRect)frame withParmas:(id)params;

@property (nonatomic, strong) NSArray *datas;
@property (nonatomic,strong) UITableView * tableView;
@property (nonatomic, copy) Block block;

@end

NS_ASSUME_NONNULL_END
