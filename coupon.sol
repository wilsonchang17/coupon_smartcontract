pragma solidity >=0.4.22 <0.7.0;


contract messageBoard {
    int public object1 = 0;
    int public object2 = 0;
    int public object3 = 0;
    int public object4 = 0;
    int public object5 = 0;
    int public object6 = 0;
    int public record = 0;
    string public no1 = "pchome1234";
    string public no2 = "amazon666";
    string public no3 = "ebay456";
    string public no4 = "shopee987";
    string public no5 = "taobao777";
    string public no6 = "walmart159";
    string public no7 = "Wrong input";
    string public message = "No coupon left";
    constructor() public {
        object1 = 100;
        object2 = 100;
        object3 = 100;
        object4 = 100;
        object5 = 100;
        object6 = 1;
        record = 0;
    }
    function getwhich(int input) public returns (bool){
        if (input == 1){
            if (object1 > 0){
                object1 = object1 - 1;
                record = 1;
            }
            else{
                object1 = 0;
                record = 8;
            }
            return true;
        }
        if (input == 2){
            if (object2 > 0){
                object2 = object2 - 1;
                record = 2;
            }
            else{
                object2 = 0;
                record = 8;
            }
            return true;
        }
        if (input == 3){
            if (object3 > 0){
                object3 = object3 - 1;
                record = 3;
            }
            else{
                object3 = 0;
                record = 8;
            }
            return true;
        }
        if (input == 4){
            if (object4 > 0){
                object4 = object4 - 1;
                record = 4;
            }
            else{
                object4 = 0;
                record = 8;
            }
            return true;
        }
        if (input == 5){
            if (object5 > 0){
                object5 = object5 - 1;
                record = 5;
            }
            else{
                object5 = 0;
                record = 8;
            }
            return true;
        }
        if (input == 6){
            if (object6 > 0){
                object6 = object6 - 1;
                record = 6;
            }
            else{
                object6 = 0;
                record = 8;
            }
            return true;
        }
        else{
            record = 7;
        }
    }
    function show1()  public view returns (int ){
        return object1;
    }
    function show2()  public view returns (int ){
        return object2;
    }
    function show3()  public view returns (int ){
        return object3;
    }
    function show4()  public view returns (int ){
        return object4;
    }
    function show5()  public view returns (int ){
        return object5;
    }
    function show6()  public view returns (int ){
        return object6;
    }
    function showcoupon()  public view returns (string memory content){
        if (record == 1){return no1;}
        if (record == 2){return no2;}
        if (record == 3){return no3;}
        if (record == 4){return no4;}
        if (record == 5){return no5;}
        if (record == 6){return no6;}
        if (record == 7){return no7;}
        if (record == 8){return message;}
    }
    function pay() public payable{

    }
}