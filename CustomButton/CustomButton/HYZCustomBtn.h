//
//  HYZ.h
//  CustomButton
//
//  Created by Han_YaZhou on 14/12/5.
//  Copyright (c) 2014年 韩亚周. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HYZCustomBtn : UIButton
@property (nonatomic, strong) NSString                  *titleString;
@property (nonatomic, strong) UIImage                   *normalImage;
@property (nonatomic, strong) UIImage                   *heightLightImage;
@property (nonatomic, strong) UIButton                  *headerBtn;//前边的图片
@property (nonatomic, strong) UILabel                   *textLable;//文字内容
@end
