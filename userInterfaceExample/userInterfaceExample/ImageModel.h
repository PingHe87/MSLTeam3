//
//  ImageModel.h
//  userInterfaceExample
//
//  Created by p h on 9/12/24.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageModel : NSObject

//+ instance, - class
+ (ImageModel*)sharedInstance;

-(UIImage*) getImageWithName:(NSString*)name;

//NSArray of image names
@property (strong, nonatomic) NSArray* imageNames;

@end

NS_ASSUME_NONNULL_END
