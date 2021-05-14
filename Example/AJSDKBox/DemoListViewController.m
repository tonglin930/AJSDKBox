//
//  DemoListViewController.m
//  AJSDKBox_Example
//
//  Created by tonglin on 2021/4/13.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

#import "DemoListViewController.h"


@interface DemoListViewController ()

@end

@implementation DemoListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"DemoListViewController";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    if (self.data != nil) {
        UITextView *textView = [[UITextView alloc]init];
        textView.frame = CGRectMake(100, 100, 100, 100);
        textView.text = [NSString stringWithFormat:@"%@",self.data];
        [self.view addSubview:textView];
    }
    
    
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
