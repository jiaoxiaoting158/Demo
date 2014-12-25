//
//  ViewController.m
//  Demo
//
//  Created by jiaoxt on 12/18/14.
//  Copyright (c) 2014 jiaoxt. All rights reserved.
//

#import "RootViewController.h"
#import "UIGravityViewController.h"
#import "UICollisionViewController.h"

@interface RootViewController ()<UITableViewDataSource,UITableViewDelegate>{
    UITableView *_tableView;
    NSArray *_items;
}

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     self.edgesForExtendedLayout = UIRectEdgeNone;
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    _items = [[NSArray alloc] initWithObjects:@"Gravity",
              @"Collisions",
              @"Attachments",
              @"Springs",
              @"Snap",
              @"Forces",nil];
    self.title = @"UIKit Dynamics";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _items.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 44.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellMark = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellMark];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellMark];
    }
    cell.textLabel.text = [_items objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    UIViewController *viewController = nil;
    switch (indexPath.row) {
        case 0:{
            UIGravityViewController *ctr = [[UIGravityViewController alloc] init];
            viewController = ctr;

            break;
        }
        case 1:{
            UICollisionViewController *ctr = [[UICollisionViewController alloc] init];
            viewController = ctr;
            
            break;
        }
        case 2:{
            
            break;
        }
        case 3:{
            
            break;
        }
        case 4:{
            
            break;
        }
            
        default:
            break;
    }
    
    if (viewController) {
        [self.navigationController pushViewController:viewController animated:YES];
    }
}
@end
