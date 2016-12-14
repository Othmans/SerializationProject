//
//  ViewController.m
//  objectSerialization
//
//  Created by Othman on 12/14/16.
//  Copyright © 2016 ertiqa. All rights reserved.
//

#import "ViewController.h"
#import "iObject.h"

@interface ViewController ()
{
    iObject * iValue;
    
}

@end

@implementation ViewController

-(void)storeObject:(iObject *) obj{
    NSMutableData *yourData = [[NSMutableData alloc] init];
    
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc] initForWritingWithMutableData:yourData];
    [archiver encodeObject:iValue forKey: @"key"];
    [archiver finishEncoding];
    [yourData writeToFile:@"FilePath" atomically:YES];
}
-(iObject *) loadObject{
    NSData *yourData1 = [[NSMutableData alloc]initWithContentsOfFile:@"FilePath"];
    NSKeyedUnarchiver *unarchiver = [[NSKeyedUnarchiver alloc] initForReadingWithData:yourData1];
    iValue = [unarchiver decodeObjectForKey: @"key"];
    [unarchiver finishDecoding];
    return iValue;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
  
    iValue = [[iObject alloc]initWithName:@"Othman" description:@"iOS" url:@"Link"];
    
 
    //store Object
    [self storeObject:iValue];
    
    
    
    //Load Load
    NSLog(@"data value is %@",[self loadObject]);
  
    
   
    

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
