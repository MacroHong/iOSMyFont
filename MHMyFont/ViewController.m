//
//  ViewController.m
//  MHMyFont
//
//  Created by Macro on 10/27/15.
//  Copyright © 2015 Macro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    int i = 0;
    for(NSString *fontfamilyname in [UIFont familyNames])
    {
        NSLog(@"family:'%@'",fontfamilyname);
        for(NSString *fontName in [UIFont fontNamesForFamilyName:fontfamilyname])
        {
            NSLog(@"\tfont:'%@'",fontName);
        }
        NSLog(@"-------------%d",i++);
    }
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 40, [[UIScreen mainScreen] bounds].size.width - 20, 40)];
    label.textColor = [UIColor blackColor];
    label.text = @"今夜天气晴朗";
    label.font = [UIFont fontWithName:@"经典宋体简"size:40];
    [self.view addSubview:label];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
