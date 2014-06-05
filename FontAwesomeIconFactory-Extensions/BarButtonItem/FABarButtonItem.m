//
//  FABarButtonItem.m
//  QMBFontAwesome-Extensions-Sample
//
//  Created by Toni Möckel on 14.11.13.
//  Copyright (c) 2013 Toni Möckel. All rights reserved.
//

#import "FABarButtonItem.h"


@interface FABarButtonItem(){
    NIKFontAwesomeIcon _icon;
}

@end

@implementation FABarButtonItem

- (id)initWithIcon:(NIKFontAwesomeIcon)icon style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action {

    self = [super initWithTitle:@"" style:style target:target action:action];
    
    if (self){
        [self setIcon:icon];
    }
    
    return self;
    
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self setIcon:self.tag];
}

- (void)setIcon:(NIKFontAwesomeIcon)icon {
    _icon = icon;
    NIKFontAwesomeIconFactory *factory = [NIKFontAwesomeIconFactory barButtonItemIconFactory];
    if (self.tintColor){
        [factory setColors:@[self.tintColor]];
    }
    
    [self setImage:[factory createImageForIcon:icon]];
    
    
}

- (void)setTintColor:(UIColor *)tintColor {
    
    [super setTintColor:tintColor];
    [self setIcon:_icon];
    
}

@end
