//
//  FATabBarItem.m
//  QMBFontAwesome-Extensions-Sample
//
//  Created by Toni Möckel on 14.11.13.
//  Copyright (c) 2013 Toni Möckel. All rights reserved.
//

#import "FATabBarItem.h"
#import "NIKFontAwesomeIconFactory+iOS.h"

@implementation FATabBarItem

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    NIKFontAwesomeIconFactory *factory = [NIKFontAwesomeIconFactory tabBarItemIconFactory];
    [self setImage:[factory createImageForIcon:self.tag]];
    
}


@end
