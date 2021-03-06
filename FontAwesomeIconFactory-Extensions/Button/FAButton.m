//
//  FAButton.m
//  QMBFontAwesome-Extensions-Sample
//
//  Created by Toni Möckel on 14.11.13.
//  Copyright (c) 2013 Toni Möckel. All rights reserved.
//

#import "FAButton.h"

@interface FAButton(){
    NIKFontAwesomeIcon _icon;
    NSInteger _iconSize;
}

@property (nonatomic, strong) CAShapeLayer *circleLayer;

@end

@implementation FAButton



- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self setIcon:self.tag];
    
}

- (void)setIcon:(NIKFontAwesomeIcon)icon {

    if (_iconSize == 0){
        _iconSize = (NSInteger) (self.bounds.size.height *0.8);
    }
    [self setIcon:icon withSize:_iconSize];

}

- (void)setIcon:(NIKFontAwesomeIcon)icon withSize:(float)size {

    _icon = icon;
    _iconSize = size;
    NIKFontAwesomeIconFactory *factory = [NIKFontAwesomeIconFactory buttonIconFactory];
    [factory setColors:@[self.tintColor]];
    [factory setSize:_iconSize];
    [self setImage:[factory createImageForIcon:icon] forState:UIControlStateNormal];

}

- (void)setTintColor:(UIColor *)tintColor {
    
    [super setTintColor:tintColor];
    [self setIcon:_icon];

}

- (void)drawCircleButton:(UIColor *)color fill:(UIColor *)fillColor
{
    
    [self setBackgroundColor:fillColor];
    self.layer.cornerRadius = self.bounds.size.width / 2;
    
    

}

@end

