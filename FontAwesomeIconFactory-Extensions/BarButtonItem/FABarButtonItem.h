//
//  FABarButtonItem.h
//  QMBFontAwesome-Extensions-Sample
//
//  Created by Toni Möckel on 14.11.13.
//  Copyright (c) 2013 Toni Möckel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIKFontAwesomeIconFactory+iOS.h"

@interface FABarButtonItem : UIBarButtonItem

@property (nonatomic, strong) UIColor *color;
@property (nonatomic) NIKFontAwesomeIcon icon;

- (id)initWithIcon:(NIKFontAwesomeIcon)icon style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action;
- (id) initWithFontAwesomeIcon:(NIKFontAwesomeIcon)icon target:(id)target action:(SEL)selector;

@end
