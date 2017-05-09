//
//  UITextField+shake.m
//  TextField
//
//  Created by fzy on 2017/5/9.
//  Copyright © 2017年 fzy. All rights reserved.
//

#import "UITextField+shake.h"

@implementation UITextField (shake)
- (void)shake {
    CAKeyframeAnimation *keyFrame = [CAKeyframeAnimation animationWithKeyPath:@"position.x"];
    keyFrame.duration = 0.3;
    CGFloat x = self.layer.position.x;
    keyFrame.values = @[@(x + 30), @(x - 30), @(x + 20), @(x - 20), @(x + 10), @(x - 10), @(x + 5), @(x - 5)];
    [self.layer addAnimation:keyFrame forKey:@"shake"];
    
}
@end
