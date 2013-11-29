//
//  BomdiggyImage.h
//  Bomdiggy
//
//  Created by Carlos on 22-11-13.
//  Copyright (c) 2013 Carzilla. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BomdiggyImage : UIImage{
    NSURL *url;
    UIImage *image;
}

-(id) initWithBomdiggyImage: (NSString *) url;
-(UIImage *) getImage;

@end
