//
//  ImageModel.m
//  userInterfaceExample
//
//  Created by p h on 9/12/24.
//

#import "ImageModel.h"

@implementation ImageModel
@synthesize imageNames = _imageNames;

+(ImageModel*)sharedInstance{
    static ImageModel* _sharedInstance = nil;
    //keep tracking of how often I call the following code
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        _sharedInstance = [[ImageModel alloc] init];
    });
    
    return _sharedInstance;
}

//overwrite the getter
-(NSArray*) imageNames{
    
    if(!_imageNames)
        _imageNames = @[@"dog", @"cat", @"frog"];
    
    return _imageNames;
}

-(UIImage*) getImageWithName:(NSString*)name{
    UIImage* image = nil;
    
    image = [UIImage imageNamed:name];
    
    return image;
}

@end
