service MyService @(path: 'MyService') {

    function greeting(name:String(20)) returns String;

    function multiply(num1 : Integer , num2 : Integer)
        returns Integer;
}