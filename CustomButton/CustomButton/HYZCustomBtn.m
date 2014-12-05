//
//  HYZ.m
//  CustomButton
//
//  Created by Han_YaZhou on 14/12/5.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import "HYZCustomBtn.h"

@implementation HYZCustomBtn

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _headerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _headerBtn.frame = CGRectMake(3, 3, 14, 14);
        _headerBtn.selected = self.selected;
        _headerBtn.userInteractionEnabled = NO;
        [self addSubview:_headerBtn];
        
        
        _textLable = [[UILabel alloc] initWithFrame:CGRectMake(25, 0, frame.size.width - 25, frame.size.height)];
        _textLable.font = [UIFont systemFontOfSize:15];
        _textLable.adjustsFontSizeToFitWidth = YES;
        [self addSubview:_textLable];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    _textLable.text = _titleString;
    if (self.selected) {
        [_headerBtn setBackgroundImage:_normalImage forState:UIControlStateNormal];
    }else{
        [_headerBtn setBackgroundImage:_heightLightImage forState:UIControlStateNormal];
    }
}

@end
