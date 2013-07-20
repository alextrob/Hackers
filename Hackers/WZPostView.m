//
//  WZPostView.m
//  Hackers
//
//  Created by Weiran Zhang on 18/06/2013.
//  Copyright (c) 2013 Weiran Zhang. All rights reserved.
//

#import "WZPostView.h"
#import "WZPostModel.h"

@implementation WZPostView

//- (id)initWithCoder:(NSCoder *)aDecoder {
//    if ((self = [super initWithCoder:aDecoder])) {
//        [self addSubview:[[[NSBundle mainBundle] loadNibNamed:@"WZPostView" owner:self options:nil] objectAtIndex:0]];
//    }
//    return self;
//}
//
- (void)setPost:(WZPostModel *)post {
    _post = post;
    [self updateLabels];
}

- (void)setRead:(BOOL)read {
    _read = read;
    [self updateLabels];
}

- (void)updateLabels {
    WZPostModel *post = self.post;
    self.detail1Label.text = [NSString stringWithFormat:@"%lu points by %@", (unsigned long)post.points, post.user];
    self.detail2Label.text = [NSString stringWithFormat:@"%@ · %lu comments", post.timeAgo, (unsigned long)post.commentsCount];
    self.titleLabel.text = post.title;
    if ([post.type isEqualToString:@"ask"]) { // Ask
        self.domainLabel.text = @"Ask";
    } else if ([post.type isEqualToString:@"job"]) { // Job
        self.domainLabel.text = @"Job";
    } else {
        self.domainLabel.text = post.domain;
    }
    
    self.readBadgeImageView.hidden = self.read;
}

@end
