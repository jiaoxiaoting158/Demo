//
//  UIGravityViewController.m
//  Demo
//
//  Created by jiaoxt on 12/25/14.
//  Copyright (c) 2014 jiaoxt. All rights reserved.
//

#import "UICollisionViewController.h"

@interface UICollisionViewController (){
    UIImageView *_flowerImageView;
    UIImageView *_dogImgeView;
    UIDynamicAnimator * _animator;
    UIGravityBehavior * _gravity;
    UICollisionBehavior *_collision;
}

@end

@implementation UICollisionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _flowerImageView = [[UIImageView alloc] initWithFrame:CGRectMake(135.0, 0, 50, 50)];
    [_flowerImageView setImage:[UIImage imageNamed:@"flower.jpg"]];
    [self.view addSubview:_flowerImageView];
    
    _dogImgeView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 0, 100, 50)];
    [_dogImgeView setImage:[UIImage imageNamed:@"dog.jpg"]];
    [self.view addSubview:_dogImgeView];
    self.view.backgroundColor = [UIColor whiteColor];

    
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    _gravity = [[UIGravityBehavior alloc] initWithItems:@[_flowerImageView,_dogImgeView]];
    [_animator addBehavior:_gravity];
    
    _collision = [[UICollisionBehavior alloc] initWithItems:@[_flowerImageView,_dogImgeView]];
    _collision.collisionMode = UICollisionBehaviorModeEverything;
    _collision.translatesReferenceBoundsIntoBoundary = YES;
    [_animator addBehavior:_collision];
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
