//
//  FABarButtonItem.m
//  QMBFontAwesome-Extensions-Sample
//
//  Created by Toni Möckel on 14.11.13.
//  Copyright (c) 2013 Toni Möckel. All rights reserved.
//

#import "FABarButtonItem.h"


@interface FABarButtonItem()

@end

@implementation FABarButtonItem


- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self setIcon:self.tag];
}




- (id)initWithFontAwesomeIcon:(NIKFontAwesomeIcon)icon target:(id)target action:(SEL)selector{
    
    self = [super initWithImage:[[self factory] createImageForIcon:icon] style:UIBarButtonItemStylePlain target:target action:selector];
    
    if (self){
        [self setIcon:icon];
    }
    
    return self;
}

- (id)initWithIcon:(NIKFontAwesomeIcon)icon style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action {
    
    self = [self initWithFontAwesomeIcon:icon target:target action:action];
    
    return self;
    
}

- (void)setColor:(UIColor *)color {
    _color = color;
    [self setIcon:_icon];
}


- (NIKFontAwesomeIconFactory *) factory {
    NIKFontAwesomeIconFactory *factory = [NIKFontAwesomeIconFactory barButtonItemIconFactory];
    return factory;
}

- (void)setTintColor:(UIColor *)tintColor {
    
    [super setTintColor:tintColor];
    [self setIcon:_icon];
    
}

- (void)setIcon:(NIKFontAwesomeIcon)icon {
    _icon = icon;
    NIKFontAwesomeIconFactory *factory = [NIKFontAwesomeIconFactory barButtonItemIconFactory];
    
    if (self.color){
        [factory setColors:@[self.color]];
    }else if ([[UINavigationBar appearance] tintColor]){
        [factory setColors:@[[[UINavigationBar appearance] tintColor]]];
    }
    
    [self setImage:[factory createImageForIcon:icon]];
    
    
}

@end
