//
//  ViewController.m
//  CCPageControl
//
//  Created by 刘龙 on 2017/8/20.
//  Copyright © 2017年 liulong. All rights reserved.
//

#import "LeadViewController.h"
#import "PageControlView.h"
@interface LeadViewController ()
@property(strong , nonatomic)PageControlView *pageControlV;
@property(strong , nonatomic)NSArray *imageArr;
@end

@implementation LeadViewController
- (NSArray *)imageArr
{
    if (!_imageArr) {
        _imageArr = [NSArray arrayWithObjects:@"启动页1 copy",@"启动页2 copy",@"启动页3 copy", nil];
    }
    return _imageArr;
}

- (PageControlView *)pageControlV
{
    if (!_pageControlV) {
        _pageControlV = [[PageControlView instance] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) andImageList:self.imageArr];
    }
    return _pageControlV;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self.view addSubview:self.pageControlV];
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
