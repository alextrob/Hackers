//
//  WZPostCell.m
//  Hackers
//
//  Created by Weiran Zhang on 05/11/2012.
//  Copyright (c) 2012 Weiran Zhang. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import "WZPostCell.h"
#import "WZPostView.h"

@implementation WZPostCell

//- (id)initWithCoder:(NSCoder *)aDecoder {
//    if ((self = [super initWithCoder:aDecoder])) {
//        _postView = [[[NSBundle mainBundle] loadNibNamed:@"WZPostView" owner:self options:nil] objectAtIndex:0];
//    }
//    return self;
//}

- (void)awakeFromNib {
    [self setTheme];
}

- (void)setTheme {
    _postView.titleLabel.textColor = [WZTheme titleTextColor];
    _postView.domainLabel.textColor = [WZTheme subtitleTextColor];
    if (self.selected) {
        self.backgroundColor = [WZTheme highlightedBackgroundColor];
    } else {
        self.backgroundColor = [WZTheme backgroundColor];
    }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated {
    if (self.highlighted != highlighted) {
        [super setHighlighted:highlighted animated:animated];
        [self updateBackgroundColorHighlighted:highlighted animated:animated];
    }
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    if (self.selected != selected) {
        [super setSelected:selected animated:animated];
        [self updateBackgroundColorHighlighted:selected animated:animated];
    }
}

- (void)updateBackgroundColorHighlighted:(BOOL)highlighted animated:(BOOL)animated {
    double duration = 0;
    
    if (animated) {
        duration = 0.2;
    }
    
    [UIView animateWithDuration:duration
                     animations:^{
                         if (highlighted) {
                             self.backgroundColor = [WZTheme highlightedBackgroundColor];
                         } else {
                             self.backgroundColor = [WZTheme backgroundColor];
                         }
                     }];
}

@end
