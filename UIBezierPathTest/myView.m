//
//  myView.m
//  UIBezierPathTest
//
//  Created by SongLan on 2017/3/19.
//  Copyright © 2017年 Asong. All rights reserved.
//

#import "myView.h"

@implementation myView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.borderWidth = 2;
        self.layer.borderColor = [UIColor redColor].CGColor;
    }
    return self;
}

//三角形
- (void)testBezierPath{
    self.wsBezierPath = [UIBezierPath bezierPath];
    [self.wsBezierPath moveToPoint:CGPointMake(50, 50)];
    [self.wsBezierPath addLineToPoint:CGPointMake(100, 100)];
    [self.wsBezierPath addLineToPoint:CGPointMake(50, 100)];
    //闭合曲线 或者是手动通过收尾详解 如 ：addLineToPoint:CGPointMake(50, 50)];
    [self.wsBezierPath closePath];
    
    self.wsBezierPath.lineWidth = 5;
    //设置画笔颜色
    UIColor * color = [UIColor redColor];
    [color set];
    [self.wsBezierPath fill];//填充颜色
    
    UIColor * color2 = [UIColor blueColor];
    [color2 set];
    [self.wsBezierPath stroke];//画笔颜色
}
/*
 - (void)moveToPoint:(CGPoint)point;
 - (void)addLineToPoint:(CGPoint)point;
 - (void)addCurveToPoint:(CGPoint)endPoint controlPoint1:(CGPoint)controlPoint1 controlPoint2:(CGPoint)controlPoint2;
 - (void)addQuadCurveToPoint:(CGPoint)endPoint controlPoint:(CGPoint)controlPoint;
 - (void)addArcWithCenter:(CGPoint)center radius:(CGFloat)radius startAngle:(CGFloat)startAngle endAngle:(CGFloat)endAngle clockwise:(BOOL)clockwise NS_AVAILABLE_IOS(4_0);
 */
//画三次曲线
- (void)test14{
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    // 设置起始端点
    [path moveToPoint:CGPointMake(20, 150)];
    
    [path addCurveToPoint:CGPointMake(300, 150)
            controlPoint1:CGPointMake(160, 0)
            controlPoint2:CGPointMake(160, 250)];
    
    path.lineCapStyle = kCGLineCapRound;
    path.lineJoinStyle = kCGLineJoinRound;
    path.lineWidth = 5.0;
    
    UIColor *strokeColor = [UIColor redColor];
    [strokeColor set];
    
    [path stroke];

}

//画弧
- (void)test13{
    self.wsBezierPath = [UIBezierPath bezierPath];
    
    //起始点
    [self.wsBezierPath moveToPoint:CGPointMake(50, 200)];
   
    [self.wsBezierPath addArcWithCenter:CGPointMake(self.frame.size.width/2, self.frame.size.height/2) radius:50 startAngle:0 endAngle:M_PI clockwise:YES];
    
    self.wsBezierPath.lineWidth = 5;
    //设置画笔颜色
    UIColor * color = [UIColor clearColor];
    [color set];
    [self.wsBezierPath fill];//填充颜色
    
    UIColor * color2 = [UIColor blueColor];
    [color2 set];
    [self.wsBezierPath stroke];//画笔颜色


}






//画二次曲线 就是抛物线
- (void)test12{
    self.wsBezierPath = [UIBezierPath bezierPath];
    
    //起始点
    [self.wsBezierPath moveToPoint:CGPointMake(50, 200)];
    //CGPointMake(70, 210) 是终点    CGPointMake(200, 50)是控制点
    [self.wsBezierPath addQuadCurveToPoint:CGPointMake(300, 200) controlPoint:CGPointMake(200, 50)];
    
    self.wsBezierPath.lineWidth = 5;
    //设置画笔颜色
    UIColor * color = [UIColor clearColor];
    [color set];
    [self.wsBezierPath fill];//填充颜色
    
    UIColor * color2 = [UIColor blueColor];
    [color2 set];
    [self.wsBezierPath stroke];//画笔颜色
    
    
}

- (void)test11{
    self.wsBezierPath = [UIBezierPath bezierPath];
    
    //起始点
    [self.wsBezierPath moveToPoint:CGPointMake(50, 50)];
    //下面是连接点
    [self.wsBezierPath addLineToPoint:CGPointMake(150 , 200)];
    [self.wsBezierPath addLineToPoint:CGPointMake(60 , 150)];
    [self.wsBezierPath addLineToPoint:CGPointMake(50, 50)];//或者[self.wsBezierPath closePath];

    
    self.wsBezierPath.lineWidth = 5;
    //设置画笔颜色
    UIColor * color = [UIColor clearColor];
    [color set];
    [self.wsBezierPath fill];//填充颜色
    
    UIColor * color2 = [UIColor blueColor];
    [color2 set];
    [self.wsBezierPath stroke];//画笔颜色


}


//指定的路线画线
- (void)test7{
    
    UIBezierPath * path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(40, 40)];
    [path addLineToPoint:CGPointMake(40, 60)];
    [path addLineToPoint:CGPointMake(40, 60)];
    [path addLineToPoint:CGPointMake(40, 60)];
    [path addLineToPoint:CGPointMake(60, 110)];
    [path addLineToPoint:CGPointMake(70, 120)];
    [path addLineToPoint:CGPointMake(80, 130)];
    [path addLineToPoint:CGPointMake(90, 130)];
    [path addLineToPoint:CGPointMake(100, 140)];
    [path addLineToPoint:CGPointMake(110, 150)];
    
    
    self.wsBezierPath = [UIBezierPath  bezierPathWithCGPath:path.CGPath];
    
    self.wsBezierPath.lineWidth = 5;
    //设置画笔颜色
    UIColor * color = [UIColor clearColor];
    [color set];
    [self.wsBezierPath fill];//填充颜色
    
    UIColor * color2 = [UIColor blueColor];
    [color2 set];
    [self.wsBezierPath stroke];//画笔颜色
}




//画圆弧
- (void)test6{
    //clockwise 是否是顺时针
    self.wsBezierPath = [UIBezierPath  bezierPathWithArcCenter:CGPointMake(self.center.x, self.center.y) radius:50 startAngle:0 endAngle:M_PI clockwise:NO];
    
    self.wsBezierPath.lineWidth = 5;
    //设置画笔颜色
    UIColor * color = [UIColor clearColor];
    [color set];
    [self.wsBezierPath fill];//填充颜色
    
    UIColor * color2 = [UIColor blueColor];
    [color2 set];
    //提交画笔 开始画
    [self.wsBezierPath stroke];//画笔颜色
}



//设置某个圆角的矩形
- (void)test5{
    //这里要注释一下 cornerRadii目前苹果只识别宽度，对于长度没有反应 也就是说这是苹果的bug，我已经发邮件给苹果 目前还没有回复
    self.wsBezierPath = [UIBezierPath  bezierPathWithRoundedRect:CGRectMake(50, 50, 100, 100) byRoundingCorners:UIRectCornerTopRight cornerRadii:CGSizeMake(10, 100)];
    
    self.wsBezierPath.lineWidth = 5;
    //设置画笔颜色
    UIColor * color = [UIColor blueColor];
    [color set];
    [self.wsBezierPath fill];//填充颜色
    
    UIColor * color2 = [UIColor blueColor];
    [color2 set];
    [self.wsBezierPath stroke];//画笔颜色
}



//画圆角矩形
- (void)test4{
    self.wsBezierPath = [UIBezierPath  bezierPathWithRoundedRect:CGRectMake(50, 50, 100, 100) cornerRadius:10];
    self.wsBezierPath.lineWidth = 5;
    //设置画笔颜色
    UIColor * color = [UIColor blueColor];
    [color set];
    [self.wsBezierPath fill];//填充颜色
    
    UIColor * color2 = [UIColor blueColor];
    [color2 set];
    [self.wsBezierPath stroke];//画笔颜色
}
//椭圆
- (void)test3{
    self.wsBezierPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    self.wsBezierPath.lineWidth = 20;
    //设置画笔颜色
    UIColor * color = [UIColor redColor];
    [color set];
    [self.wsBezierPath fill];//填充颜色
    
    UIColor * color2 = [UIColor blueColor];
    [color2 set];
    [self.wsBezierPath stroke];//画笔颜色

}


//矩形
- (void)test2{
    self.wsBezierPath = [UIBezierPath bezierPathWithRect:CGRectMake(20, 20, 100, 100)];
    self.wsBezierPath.lineWidth = 5;
    //设置画笔颜色
    UIColor * color = [UIColor redColor];
    [color set];
    [self.wsBezierPath fill];//填充颜色
    
    UIColor * color2 = [UIColor blueColor];
    [color2 set];
    [self.wsBezierPath stroke];//画笔颜色
}

- (void)drawRect:(CGRect)rect
{
   // [self testBezierPath];
    //[self test2];//矩形
    //[self test3];//椭圆
  // [self test4];//画圆角矩形
   // [self test5];//画指定圆角的矩形
   // [self test6];//画弧
    //[self test7];//指定的路线画线
    
   
    //[self test11];
   //[self test12];
    
//   [self test13];
    [self test14];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
