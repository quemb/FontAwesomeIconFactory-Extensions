//
//  FAButton.m
//  QMBFontAwesome-Extensions-Sample
//
//  Created by Toni Möckel on 14.11.13.
//  Copyright (c) 2013 Toni Möckel. All rights reserved.
//

#import "FAButton.h"
#import "NIKFontAwesomeIconFactory+iOS.h"

@implementation FAButton

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    NIKFontAwesomeIconFactory *factory = [NIKFontAwesomeIconFactory buttonIconFactory];
    [self setImage:[factory createImageForIcon:self.tag] forState:UIControlStateNormal];
    
}

@end
