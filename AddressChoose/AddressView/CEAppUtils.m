//
//  CEAppUtils.m
//  AddressChoose
//
//  Created by zhouzhongliang on 2019/1/21.
//  Copyright © 2019 zhouzhongliang. All rights reserved.
//

#import "CEAppUtils.h"

@implementation CEAppUtils

+ (CGFloat) widthOfString:(NSString *)string font:(int)font height:(CGFloat)height{
    
    NSDictionary *dict=[NSDictionary dictionaryWithObject: [UIFont systemFontOfSize:font] forKey:NSFontAttributeName];
    CGRect rect=[string boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, height) options:NSStringDrawingTruncatesLastVisibleLine|NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil];
    return rect.size.width;
}


@end
