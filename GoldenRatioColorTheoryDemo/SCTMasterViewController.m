//
//  SCTMasterViewController.m
//  GoldenRatioColorTheoryDemo
//
//  Created by Mugunth on 2/9/13.
//  Copyright (c) 2013 Steinlogic Consulting and Training Pte Ltd. All rights reserved.
//

#import "SCTMasterViewController.h"

#import "MKColorGenerator.h"

@interface SCTMasterViewController ()
@property (nonatomic, weak) IBOutlet UICollectionView *collectionView;
@property (strong, nonatomic) MKColorGenerator *generator;
@property (nonatomic, weak) IBOutlet UISlider *saturationSlider;
@property (nonatomic, weak) IBOutlet UISlider *brightnessSlider;
@end

@implementation SCTMasterViewController

-(IBAction) brightnessSliderValueChanged:(id)sender {
  
  self.generator = [[MKColorGenerator alloc] initWithSaturation:self.saturationSlider.value
                                                     brightness:self.brightnessSlider.value];
  [self.collectionView reloadData];
}

-(IBAction) saturationSliderValueChanged:(id)sender {
  
  self.generator = [[MKColorGenerator alloc] initWithSaturation:self.saturationSlider.value
                                                     brightness:self.brightnessSlider.value];
  [self.collectionView reloadData];
}

- (void)viewDidLoad
{
  [super viewDidLoad];
  self.generator = [[MKColorGenerator alloc] initWithSaturation:self.saturationSlider.value
                                                     brightness:self.brightnessSlider.value];
  
  [self.collectionView reloadData];
}

- (void)didReceiveMemoryWarning
{
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
  
  return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
  
  return 120;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
  
  static NSString *CellIdentifier = @"Cell";
  UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier
                                                                         forIndexPath:indexPath];
  
  cell.backgroundColor = [self.generator nextColor];
  return cell;
}

@end
