#import <UIKit/UIKit.h>
   @interface SBFolderIconImageView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@property (nonatomic, strong, readwrite) UIView *backgroundView;
@end
%hook SBFolderIconImageView
-(void)setNeedsLayout{
self.backgroundView.hidden = YES;
}
%end

