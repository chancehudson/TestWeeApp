#import "TestWeeAppController.h"

@implementation TestWeeAppController

-(id)init{
    if((self = [super init])){
        currentSize = CGSizeMake(200,100);
        showingMore = NO;
    }
    return self;
}

-(id)_weeAppView{
    return self.view;
}

- (void)hostWillPresent{
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(47,0,200,100)];
	label.alpha = 0.5;
    label.tag = 100;
    [label setTextColor:[UIColor whiteColor]];
    label.text = @"Hello World, touch to see more";
    label.numberOfLines = 0;
    [self.view addSubview:label];
    [label release];
}

-(void)touchesBegan:(NSSet*)touches withEvent:(UIEvent*)event{
    if(showingMore){
        currentSize = CGSizeMake(currentSize.width, currentSize.height-110);
        [[self.view viewWithTag:200] removeFromSuperview];
    }
    else{
        currentSize = CGSizeMake(currentSize.width, currentSize.height+110);
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(47,110,200,100)];
        label.alpha = 0.5;
        label.tag = 200;
        [label setTextColor:[UIColor whiteColor]];
        label.text = @"The view just resized";
        label.numberOfLines = 0;
        [self.view addSubview:label];
        [label release];
    }
    showingMore = !showingMore;
    [self.widgetHost invalidatePreferredViewSize];
}

- (void)hostDidDismiss{
    [[self.view viewWithTag:100] removeFromSuperview];
}

- (void)hostDidPresent{
    
}

- (void)hostWillDismiss{
    
}

- (CGSize)preferredViewSize{
    return currentSize;
}

@end
