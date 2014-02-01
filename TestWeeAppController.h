#import <UIKit/UIKit.h>
#import "SpringBoardUIServices/_SBUIWidgetViewController.h"

@interface TestWeeAppController : _SBUIWidgetViewController {
    CGSize currentSize;
    BOOL showingMore;
}

-(id)_weeAppView;
- (void)hostWillPresent;
- (void)hostDidPresent;
- (void)hostWillDismiss;
- (void)hostDidDismiss;
- (CGSize)preferredViewSize;

@end
