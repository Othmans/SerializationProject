//
//  ViewController.h
//  objectSerialization
//
//  Created by Othman on 12/14/16.
//  Copyright © 2016 ertiqa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(void)encodeWithCoder:(NSCoder *)encoder;
- (id)initWithCoder:(NSCoder *)decoder;

@end

