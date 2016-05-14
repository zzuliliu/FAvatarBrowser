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
@property (weak, nonatomic) IBOutlet UIImageView *secondImgView;
@property (weak, nonatomic) IBOutlet UIImageView *thirdImgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSArray *imgViewArrs = @[self.imgView, self.secondImgView, self.thirdImgView];
    for (UIImageView *imgView in imgViewArrs) {
        imgView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap  = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(magnifyImage)];
        [imgView addGestureRecognizer:tap];
    }
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
