//
//  UIGravityViewController.m
//  Demo
//
//  Created by jiaoxt on 12/25/14.
//  Copyright (c) 2014 jiaoxt. All rights reserved.
//

#import "UIGravityViewController.h"

@interface UIGravityViewController (){
    UIImageView *_flowerImageView;
    UIDynamicAnimator * _animator;
    UIGravityBehavior * _gravity;
}

@end

@implementation UIGravityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _flowerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(135.0, 200.0, 50, 50)];
    [_flowerImageView setImage:[UIImage imageNamed:@"flower.jpg"]];
    [self.view addSubview:_flowerImageView];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    _gravity = [[UIGravityBehavior alloc] initWithItems:@[_flowerImageView]];

    [_animator addBehavior:_gravity];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

@end
