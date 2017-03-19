//
//  ViewController.m
//  UIBezierPathTest
//
//  Created by SongLan on 2017/3/18.
//  Copyright © 2017年 Asong. All rights reserved.
//

#import "ViewController.h"
#import "myView.h"
@interface ViewController ()

@property(nonatomic,strong) myView * testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.testView = [[myView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:self.testView];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
