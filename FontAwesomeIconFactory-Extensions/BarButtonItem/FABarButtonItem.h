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

-(void) setIcon:(NIKFontAwesomeIcon)icon;
- (id)initWithIcon:(NIKFontAwesomeIcon)icon style:(UIBarButtonItemStyle)style target:(id)target action:(SEL)action;

@end
