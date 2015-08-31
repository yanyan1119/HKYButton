//
//  HKYButton.h
//  HKYButton
//
//  Created by hky on 15/8/28.
//  Copyright (c) 2015年 hky. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, HKYButtonContentType) {
    HKYButtonContentTypeTitleLeftImageRight    = 0,
    HKYButtonContentTypeTitleRightImageLeft    = 1,
    HKYButtonContentTypeTitleTopImageBottom    = 2,
    HKYButtonContentTypeTitleBottomImageTop    = 3,
};

@interface HKYButton : UIButton
{
    CGFloat _imageW;
    CGFloat _imageH;
    CGFloat _titleW;
    CGFloat _titleH;
    CGFloat _kSpaceX;
    CGFloat _kSpaceY;
    HKYButtonContentType _type;
}

- (instancetype)initWithFrame:(CGRect)frame type:(HKYButtonContentType)type;

@end
