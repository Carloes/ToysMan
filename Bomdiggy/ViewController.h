//
//  ViewController.h
//  Bomdiggy
//
//  Created by Carlos on 22-11-13.
//  Copyright (c) 2013 Carzilla. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BomdiggyImage.h"
@interface ViewController : UIViewController <UIAlertViewDelegate>{
    NSArray *images;
    int currentKey;
    
}
@property (weak, nonatomic) IBOutlet UIImageView *imageview;

@end
