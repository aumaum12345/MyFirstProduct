#import "ViewController.h"


@interface ViewController (){
    NSArray *_pickerData;
    int r;
    NSString *ans;
}


@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    [_txtfield resignFirstResponder];
    [_txtfield2 resignFirstResponder];
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    r=1;
    [_txtfield resignFirstResponder];
    [_txtfield2 resignFirstResponder];
    
    _pickerData = @[@"(+) Addition", @"(-) Subtraction", @"(x) Multiplication", @"(÷) Division"];
    
    _func = @[@1, @2, @3, @4];
    
    self.function.dataSource = self;
    self.function.delegate = self;
    _lb2.text = @"(+) Addition \n\nAddition is a mathematical operation that represents the total amount of objects together in a collection. It is signified by the plus sign (+). For example, if there are 3 + 2 apples—meaning three apples and two apples together, which is a total of 5 apples. Therefore, 3 + 2 = 5. Besides counting fruits, addition can also represent combining other physical and abstract quantities using different kinds of objects.";
}

- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickerData.count;
}


// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _pickerData[row];
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row
      inComponent:(NSInteger)component
{
    int getNum = [_func[row] floatValue];
    r = getNum;
    [_txtfield resignFirstResponder];
    [_txtfield2 resignFirstResponder];
    
    if(r==1){
        NSString *resultString = [[NSString alloc] initWithFormat:
                                  @"%@ \n\nAddition is a mathematical operation that represents the total amount of objects together in a collection. It is signified by the plus sign (+). For example, if there are 3 + 2 apples—meaning three apples and two apples together, which is a total of 5 apples. Therefore, 3 + 2 = 5. Besides counting fruits, addition can also represent combining other physical and abstract quantities using different kinds of objects.",
                                  _pickerData[row]];
        _lb2.text = resultString;
    }
    if(r==2){
        NSString *resultString = [[NSString alloc] initWithFormat:
                                  @"%@ \n\nSubtraction is a mathematical operation that represents the operation of removing objects from a collection. It is signified by the minus sign (−). For example, if there are 5 − 2 apples—meaning 5 apples with 2 taken away, which is a total of 3 apples. Therefore, 5 − 2 = 3. Besides counting fruits, subtraction can also represent combining other physical and abstract quantities using different kinds of objects.",
                                  _pickerData[row]];
        _lb2.text = resultString;
    }
    if(r==3){
        NSString *resultString = [[NSString alloc] initWithFormat:
                                  @"%@ \n\nMultiplication is the third basic mathematical operation of arithmetic, the others being addition, subtraction and division. The multiplication of two whole numbers is equivalent to the addition of one of them with itself as many times as the value of the other one; for example, 3 multiplied by 4 (often said as 3 times 4) can be calculated by adding 3 copies of 4 together.",
                                  _pickerData[row]];
        _lb2.text = resultString;
    }
    if(r==4){
        NSString *resultString = [[NSString alloc] initWithFormat:
                                  @"%@ \n\nIn mathematics, especially in elementary arithmetic, division (÷) is an arithmetic operation. Specifically, if b times c equals a, written:\na = b × c\nwhere b is not zero, then a divided by b equals c, written:\na ÷ b = c\nIn the expression a ÷ b = c, a is called the dividend or numerator, b the divisor or denominator and the result c is called the quotient.",
                                  _pickerData[row]];
        _lb2.text = resultString;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    [_txtfield resignFirstResponder];
    [_txtfield2 resignFirstResponder];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button:(id)sender {
    [_txtfield resignFirstResponder];
    [_txtfield2 resignFirstResponder];
    
    NSString *a = _txtfield.text;
    NSString *b = _txtfield2.text;
    int x = [a intValue];
    int y = [b intValue];
    int result = x+y;
    
    if(r==1){
        result = x+y;
        ans = [NSString stringWithFormat:@"%d+%d=%d",x,y,result];;
    }else if(r==2){
        result = x-y;
        ans = [NSString stringWithFormat:@"%d-%d=%d",x,y,result];;
    }else if(r==3){
        result = x*y;
        ans = [NSString stringWithFormat:@"%dx%d=%d",x,y,result];;
    }else if(r==4){
        result = x/y;
        ans = [NSString stringWithFormat:@"%d÷%d=%d",x,y,result];;
    }
    NSString *show = [NSString stringWithFormat:@"%d",result];;
    
    _lb.text = show;
        [_txtfield resignFirstResponder];
        
    UIAlertView* alert;
    alert = [[UIAlertView alloc] initWithTitle:@"Answer..."
                                           message:ans
                                          delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
    
    
    }

@end