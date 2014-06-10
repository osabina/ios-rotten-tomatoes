//
//  DetailsViewController.m
//  RottenTomatoes
//
//  Created by Osvaldo Sabina on 6/6/14.
//  Copyright (c) 2014 Ozzie Sabina. All rights reserved.
//

#import "DetailsViewController.h"

#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *synopsisLabel;
@property (weak, nonatomic) IBOutlet UIImageView *posterImage;

@end

@implementation DetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.titleLabel.text = self.movie[@"title"];
    self.synopsisLabel.text = self.movie[@"synopsis"];
    [self.synopsisLabel setNumberOfLines:0];
    [self.synopsisLabel sizeToFit];
    //   [self.overlayView addSubview:self.synopsisLabel];

    NSURL *posterUrl = [NSURL URLWithString:[self.movie valueForKeyPath:@"posters.detailed"]];
    [self.posterImage setImageWithURL:posterUrl placeholderImage:nil];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
