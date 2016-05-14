//
//  ViewController.m
//  ClickImage
//
//  Created by lanouhn on 16/5/11.
//  Copyright © 2016年 Liuf. All rights reserved.
//

#import "ViewController.h"
#import "FAvatarBrowser.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //首先给需要放大的imageview添加一个手势
    self.imgView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tap  = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(magnifyImage)];
    [self.imgView addGestureRecognizer:tap];
}

//调用放大方法
- (void)magnifyImage {
    [FAvatarBrowser showImage:self.imgView];//调用方法
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
