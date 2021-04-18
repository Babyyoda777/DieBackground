#import <UIKit/UIKit.h>
   @interface SBFolderIconImageView
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@property (nonatomic, strong, readwrite) UIView *backgroundView;
@end

%hook  SBFolderBackgroundView
- (id)initWithFrame:(struct CGRect)arg1{
  return NULL;
}
%end

%hook SBFolderController
-(BOOL)_homescreenAndDockShouldFade{
     return YES;
}
%end


%hook SBFolderIconImageView
-(void)setNeedsLayout{
self.backgroundView.hidden = YES;
}
%end


%hook SBFolderControllerBackgroundView
-(id)initWithFrame:(CGRect)arg1{
return NULL;
}
%end


%hook SBFolderIconImageView
-(id)_folderIconImageCache{
return NULL;
}
%end

%hook SBFolderIconImageView
-(void)setBackgroundView:(UIView *)arg1{
self.backgroundView.hidden = YES;
}
%end


