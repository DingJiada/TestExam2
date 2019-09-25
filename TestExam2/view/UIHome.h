//
//  UIHome.h
//  TestExam2
//
//  Created by Dingjd on 20/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIHome : UIView

+ (UILabel *)createLabelWithView:(NSString *)text TextColor:(UIColor *)color Font:(CGFloat)font;

+ (instancetype)createImageViewWithView:(UIView *)superView imageName:(NSString *)imageName;

@end

NS_ASSUME_NONNULL_END
