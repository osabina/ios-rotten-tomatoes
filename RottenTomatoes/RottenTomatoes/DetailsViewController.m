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

@property (weak, nonatomic) IBOutlet UILabel *criticScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *audienceScoreLabel;

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
    
    NSDictionary *ratings = self.movie[@"ratings"];

    self.title= self.movie[@"title"];
    self.synopsisLabel.text = self.movie[@"synopsis"];
    [self.synopsisLabel setNumberOfLines:0];
    [self.synopsisLabel sizeToFit];
    NSString *criticRating = [NSString stringWithFormat:@"%@ (%@%%)",
                ratings[@"critics_rating"], ratings[@"critics_score"]];
    NSString *audienceRating = [NSString stringWithFormat:@"%@ (%@%%)",
                              ratings[@"audience_rating"],
                              ratings[@"audience_score"]];
    self.criticScoreLabel.text = criticRating;
    self.audienceScoreLabel.text = audienceRating;
    
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
