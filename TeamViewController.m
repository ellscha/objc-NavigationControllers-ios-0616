//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Elli Scharlin on 6/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamMember.h"
#import "TeamDetailViewController.h"

@interface TeamViewController ()

@end

@implementation TeamViewController
- (IBAction)joePhotoTapped:(UIButton *)sender {
    
    
}
- (IBAction)alPhotoTapped:(UIButton *)sender {
}
- (IBAction)chrisPhotoTapped:(UIButton *)sender {
}
- (IBAction)aviPhotoTapped:(UIButton *)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([[segue identifier] isEqualToString:@"joeSegue"]) {
        TeamDetailViewController *joeVC = [segue destinationViewController];
        TeamMember *joe = [[TeamMember alloc]initWithName:@"Joe" PhoneNumber:@"1232456" BirthCity:@"Virginia" BirthState:@"Richmond" FavoriteBand:@"ACDC" Photo:[UIImage imageNamed:@"joe"]];
        joeVC.teamMember = joe;
        
    }
    if ([[segue identifier] isEqualToString:@"aviSegue"]) {
        TeamDetailViewController *aviVC = [segue destinationViewController];
        TeamMember *avi = [[TeamMember alloc]initWithName:@"Avi" PhoneNumber:@"7747777" BirthCity:@"New York" BirthState:@"New York" FavoriteBand:@"Sublime" Photo:[UIImage imageNamed:@"avi"]];
        aviVC.teamMember = avi;
        
    }
    if ([[segue identifier] isEqualToString:@"chrisSegue"]) {
        TeamDetailViewController *chrisVC = [segue destinationViewController];
        TeamMember *chris = [[TeamMember alloc]initWithName:@"Chris" PhoneNumber:@"4567890" BirthCity:@"Colorado" BirthState:@"Denver" FavoriteBand:@"The Ting Tings" Photo:[UIImage imageNamed:@"chris"]];
        chrisVC.teamMember = chris;
    }
    if ([[segue identifier] isEqualToString:@"alSegue"]) {
        TeamDetailViewController *alVC = [segue destinationViewController];
        TeamMember *al = [[TeamMember alloc]initWithName:@"Al" PhoneNumber:@"5551212" BirthCity:@"Detroit" BirthState:@"Michigan" FavoriteBand:@"The Beatles" Photo:[UIImage imageNamed:@"al"]];
        alVC.teamMember = al;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
