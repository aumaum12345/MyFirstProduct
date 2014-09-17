#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

- (IBAction)button:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *txtfield;
@property (weak, nonatomic) IBOutlet UITextField *txtfield2;

@property (strong, nonatomic) IBOutlet UIPickerView *function;

@property (strong, nonatomic) NSArray *func;

@property (strong, nonatomic) IBOutlet UILabel *lb2;


@property (strong, nonatomic) IBOutlet UILabel *lb;

@end