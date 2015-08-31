//
//  HKYButton.m
//  HKYButton
//
//  Created by hky on 15/8/28.
//  Copyright (c) 2015年 hky. All rights reserved.
//

#import "HKYButton.h"

@implementation HKYButton

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        _type = HKYButtonContentTypeTitleRightImageLeft;
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame type:(HKYButtonContentType)type
{
    if (self = [super initWithFrame:frame]) {
        _type = type;
    }
    return self;
}

- (void)setImage:(UIImage *)image forState:(UIControlState)state
{
    [super setImage:image forState:state];
    _imageW = image.size.width;
    _imageH = image.size.height;
}

- (void) setTitle:(NSString *)title forState:(UIControlState)state
{
    [super setTitle:title forState:state];
    [self.titleLabel setTextAlignment:NSTextAlignmentCenter];
    CGRect titleSize = [title boundingRectWithSize:self.frame.size options:NSStringDrawingUsesDeviceMetrics attributes:@{NSFontAttributeName:self.titleLabel.font} context:nil];
    _titleW = titleSize.size.width + 5;
    _titleH = titleSize.size.height + 5;
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageX ;
    CGFloat imageY;

    switch (_type)
    {
        case HKYButtonContentTypeTitleRightImageLeft:
        {
            _kSpaceX = (contentRect.size.width - _imageW - _titleW)/3;
            imageX = _kSpaceX;
            imageY = (contentRect.size.height - _imageH)/2;
        }
            break;
        case HKYButtonContentTypeTitleLeftImageRight:
        {
            _kSpaceX = (contentRect.size.width - _imageW - _titleW)/3;
            imageX = _kSpaceX * 2 + _titleW;
            imageY = (contentRect.size.height - _imageH)/2;
        }
            break;
        case HKYButtonContentTypeTitleTopImageBottom:
        {
            imageX = (contentRect.size.width - _imageW)/2;
            _kSpaceY = (contentRect.size.height - _imageH - _titleH)/3;
            imageY = _kSpaceY * 2 + _titleH;
        }
            break;
        case HKYButtonContentTypeTitleBottomImageTop:
        {
            imageX = (contentRect.size.width - _imageW)/2;
            _kSpaceY = (contentRect.size.height - _imageH - _titleH)/3;
            imageY = _kSpaceY;
        }
            break;
            
        default:
            break;
    }
    
    contentRect = (CGRect){{imageX,imageY},{_imageW,_imageH}};
    return contentRect;
}


- (CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleX;
    
    CGFloat titleY;
    
    switch (_type)
    {
        case HKYButtonContentTypeTitleRightImageLeft:
        {
            _kSpaceX = (contentRect.size.width - _imageW - _titleW)/3;
            titleX = _kSpaceX * 2 + _imageW;
            titleY = (contentRect.size.height - _titleH)/2;
        }
            break;
        case HKYButtonContentTypeTitleLeftImageRight:
        {
            _kSpaceX = (contentRect.size.width - _imageW - _titleW)/3;
            titleX = _kSpaceX;
            titleY = (contentRect.size.height - _titleH)/2;
        }
            break;
        case HKYButtonContentTypeTitleTopImageBottom:
        {
            titleX = (contentRect.size.width - _titleW)/2;
            _kSpaceY = (contentRect.size.height - _imageH - _titleH)/3;
            titleY = _kSpaceY;
        }
            break;
        case HKYButtonContentTypeTitleBottomImageTop:
        {
            titleX = (contentRect.size.width - _titleW)/2;
            _kSpaceY = (contentRect.size.height - _imageH - _titleH)/3;
            titleY = _kSpaceY * 2 + _imageH;
        }
            break;
            
        default:
            break;
    
    }
    
    contentRect = (CGRect){{titleX,titleY},{_titleW,_titleH}};
    
    return contentRect;
}

@end
