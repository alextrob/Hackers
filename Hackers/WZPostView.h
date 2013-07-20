//
//  WZPostView.h
//  Hackers
//
//  Created by Weiran Zhang on 18/06/2013.
//  Copyright (c) 2013 Weiran Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WZPostModel;

@interface WZPostView : UIView

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *domainLabel;
@property (weak, nonatomic) IBOutlet UILabel *detail1Label;
@property (weak, nonatomic) IBOutlet UILabel *detail2Label;
@property (weak, nonatomic) IBOutlet UIImageView *readBadgeImageView;

@property (nonatomic, strong) WZPostModel *post;
@property (nonatomic) BOOL read;

@end
