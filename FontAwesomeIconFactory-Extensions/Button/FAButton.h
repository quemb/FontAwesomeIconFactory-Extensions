//
//  FAButton.h
//  QMBFontAwesome-Extensions-Sample
//
//  Created by Toni Möckel on 14.11.13.
//  Copyright (c) 2013 Toni Möckel. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NIKFontAwesomeIconFactory+iOS.h"

@interface FAButton : UIButton

-(void) setIcon:(NIKFontAwesomeIcon)icon;
- (void)drawCircleButton:(UIColor *)color fill:(UIColor *)color;

@end
