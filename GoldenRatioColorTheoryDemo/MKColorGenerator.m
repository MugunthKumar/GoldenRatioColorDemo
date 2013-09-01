//
//  MKGoldenRatioColorGenerator.m
//  GoldenRatioColorTheoryDemo
//
//  Created by Mugunth on 2/9/13.
//  Copyright (c) 2013 Steinlogic Consulting and Training Pte Ltd. All rights reserved.
//

#import "MKColorGenerator.h"

const double goldenRatioConjugate = 0.618033988749895;

@interface MKColorGenerator (/*Private Methods*/)
@property (nonatomic, assign) double saturation;
@property (nonatomic, assign) double brightness;
@property (nonatomic, assign) double hue;
@property (nonatomic, assign) double alpha;
@end

@implementation MKColorGenerator

+(void) initialize {
  
  srand48(time(0));
}

-(instancetype) initWithSaturation:(double) s brightness:(double) b {
  
  if((self = [super init])) {
    
    self.saturation = s;
    self.brightness = b;
    self.alpha = 1.0f;
    self.hue = drand48();
  }
  
  return self;
}

-(UIColor*) nextColor {
  
  self.hue += goldenRatioConjugate;
  if(self.hue > 1)
    self.hue -= 1;
  
  UIColor *color = [UIColor colorWithHue:self.hue
                              saturation:self.saturation
                              brightness:self.brightness
                                   alpha:self.alpha];

  return color;
}

@end
