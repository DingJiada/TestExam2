//
//  UIHome.m
//  TestExam2
//
//  Created by Dingjd on 20/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "UIHome.h"

@implementation UIHome

+ (UILabel *)createLabelWithView:(NSString *)text TextColor:(UIColor *)color Font:(CGFloat)font {
    
    UILabel *label = [[UILabel alloc]init];
    label.text = text;
    label.textColor = color;
    //label.textAlignment = alignment;
    label.font = [UIFont systemFontOfSize:font];
    //[superView addSubview:label];
    
    return label;
}

+ (instancetype)createImageViewWithView:(UIView *)superView imageName:(NSString *)imageName {
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageName]];
    imageView.userInteractionEnabled = YES;
    [superView addSubview:imageView];
    return imageView;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
