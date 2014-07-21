//
//  LRCViewController.m
//  UIScrollViewChallengeSolution
//
//  Created by Luis Carbuccia on 7/20/14.
//  Copyright (c) 2014 Luis Carbuccia. All rights reserved.
//

#import "LRCViewController.h"

@interface LRCViewController () <UIScrollViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) UIImageView *globalImageView;


@end

@implementation LRCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.globalImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"world-map.jpeg"]];
    self.scrollView.contentSize = self.globalImageView.frame.size;
    [self.scrollView addSubview:self.globalImageView];
    
    self.scrollView.minimumZoomScale = .7;
    self.scrollView.maximumZoomScale = 2.0;
    
    self.scrollView.delegate = self;
    
}

- (UIView *) viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.globalImageView;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
