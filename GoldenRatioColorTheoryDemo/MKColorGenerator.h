//
//  MKColorGenerator.h
//  GoldenRatioColorTheoryDemo
//
//  Created by Mugunth on 2/9/13.
//  Copyright (c) 2013 Steinlogic Consulting and Training Pte Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MKColorGenerator : NSObject

-(instancetype) initWithSaturation:(double) s brightness:(double) b;
-(UIColor*) nextColor;
@end
