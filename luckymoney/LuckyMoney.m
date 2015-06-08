//
//  LuckyMoney.m
//  luckymoney
//
//  Created by kpse on 6/8/15.
//  Copyright (c) 2015 kpse. All rights reserved.
//

#import "LuckyMoney.h"

@interface LuckyMoney ()
@property(nonatomic) NSInteger goal;
@end

@implementation LuckyMoney

- (instancetype)initWithMoney:(NSInteger)goal {
    self = [super init];
    if (self) {
        self.goal = goal;
    }

    return self;
}

- (NSString *)guess:(NSInteger)value {
    //TODO:
    if (value < self.goal) {
        return [NSString stringWithFormat:@"%@-100", @(value + 1)];
    } else if (value > self.goal){
        return [NSString stringWithFormat:@"1-%@", @(value - 1)];
    }
    return @"Bingo!";
}
@end
