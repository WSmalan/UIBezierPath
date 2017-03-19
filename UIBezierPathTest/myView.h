//
//  myView.h
//  UIBezierPathTest
//
//  Created by SongLan on 2017/3/19.
//  Copyright © 2017年 Asong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface myView : UIView

@property(nonatomic,strong) UIBezierPath * wsBezierPath;
@property(nonatomic,strong) UIButton * button;
- (instancetype)initWithFrame:(CGRect)frame;
@end
