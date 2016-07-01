//
//  ViewController.m
//  My360VideoPlayer
//
//  Created by RKM on 16/6/30.
//  Copyright © 2016年 RKM. All rights reserved.
//

#import "ViewController.h"
#import "HTY360PlayerVC.h"

@interface ViewController ()

@end

@implementation ViewController

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskLandscape;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor orangeColor];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor whiteColor];
    button.center = self.view.center;
    button.bounds = CGRectMake(0, 0, 120, 50);
    [button setTitle:@"进入播放" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(goTo360Play) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void)goTo360Play
{
    HTY360PlayerVC *videoController = [[HTY360PlayerVC alloc] initWithNibName:@"HTY360PlayerVC" bundle:nil url:[[NSURL alloc] initWithString:@"http://baobab.wdjcdn.com/1465182379745l.mp4"]];
    [self presentViewController:videoController animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
