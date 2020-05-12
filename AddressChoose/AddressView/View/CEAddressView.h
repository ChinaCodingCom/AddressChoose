//
//  CEAddressView.h
//  AddressChoose
//
//  Created by zhouzhongliang on 2019/1/19.
//  Copyright © 2019 zhouzhongliang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CEAddressTableView.h"
#import "CEAddressModel.h"

NS_ASSUME_NONNULL_BEGIN

typedef void(^returnBlock)(NSDictionary *addressDic);

@interface CEAddressView : UIView <UIScrollViewDelegate>

@property (nonatomic, copy) returnBlock block;

@property (nonatomic, strong) UIView *fatherView;

@property (nonatomic, strong) NSArray *datasArr, *datasArr1, *datasArr2;

/**
 弹出选择地址view
 
 @param supView 父view
 */
- (void) showView:( UIView * _Nonnull )supView;

@property (nonatomic, strong) UIView *myView;


/**
 请选择label
 */
@property (nonatomic, strong) UILabel *selectLabel;


/**
 红色的线
 */
@property (nonatomic, strong) UIView *redLineView;


@property (nonatomic, strong) UIScrollView *scrollView;

@property (nonatomic, strong) CEAddressTableView *__nullable tableView1;
@property (nonatomic, strong) CEAddressTableView *__nullable tableView2;
@property (nonatomic, strong) CEAddressTableView *__nullable tableView3;

/**
 记录点击的第一个的Model
 */
@property (nonatomic, strong) CEAddressModel *oneModel;

/**
 记录点击的第二个的Model
 */
@property (nonatomic, strong) CEAddressModel *twoModel;

/**
 省份label
 */
@property (nonatomic, strong) UILabel *stateLabel;

/**
 市label
 */
@property (nonatomic, strong) UILabel *__nullable cityLabel;


@end

NS_ASSUME_NONNULL_END
