//
//  CEAddressTableView.m
//  AddressChoose
//
//  Created by zhouzhongliang on 2019/1/19.
//  Copyright © 2019 zhouzhongliang. All rights reserved.
//

#define RGB(r, g, b)  [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1]

#import "CEAddressTableView.h"
#import "CEAddressModel.h"

@implementation CEAddressTableView

- (instancetype)initWithFrame:(CGRect)frame withParmas:(id)params{
    self = [super initWithFrame:frame];
    if (self) {
        self.datas = params;
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        _tableView.tableFooterView = [[UIView alloc] init];
        _tableView.backgroundColor = [UIColor whiteColor];
        [_tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
        [self addSubview:_tableView];
    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datas.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 50;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName = @"cellid";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (!cell)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellName];
    }
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor whiteColor];
    CEAddressModel *oneModel = self.datas[indexPath.row];
    cell.textLabel.text = oneModel.label;
    if (self.indexRow && self.indexRow.integerValue == indexPath.row) {
        cell.textLabel.textColor = RGB(242, 36, 36);
    }else{
        cell.textLabel.textColor = [UIColor blackColor];
    }
    cell.textLabel.font = [UIFont systemFontOfSize:15.f];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    self.indexRow = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    [tableView reloadData];
    if (self.block) {
        self.block(indexPath.row);
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
