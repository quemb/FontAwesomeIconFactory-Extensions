//
//  FABarButtonItem.m
//  QMBFontAwesome-Extensions-Sample
//
//  Created by Toni Möckel on 14.11.13.
//  Copyright (c) 2013 Toni Möckel. All rights reserved.
//

#import "FABarButtonItem.h"
#import "NIKFontAwesomeIconFactory+iOS.h"

@implementation FABarButtonItem

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    NIKFontAwesomeIconFactory *factory = [NIKFontAwesomeIconFactory barButtonItemIconFactory];
    [self setImage:[factory createImageForIcon:self.tag]];
}

@end
