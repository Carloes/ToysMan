//
//  BomdiggyImage.m
//  Bomdiggy
//
//  Created by Carlos on 22-11-13.
//  Copyright (c) 2013 Carzilla. All rights reserved.
//

#import "BomdiggyImage.h"

@implementation BomdiggyImage

- (id) initWithBomdiggyImage:(NSString *)urlString {
    self = [super init];
    url = [NSURL URLWithString:urlString];
    image = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
    return self;
}

- (UIImage *) getImage {
    return image;
}

@end
