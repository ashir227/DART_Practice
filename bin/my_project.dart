void main(){
    Mobile obj = Mobile();
    obj.Brand = "Samsung";
    obj.Model = "A22";
    obj.Price = 50000;
obj.phoneinfo();    

    print("================");

    Mobile obj1 =Mobile();
    obj1.Brand = "Iphone";
    obj1.Model = "16ProMax";
    obj1.Price = 600000;
obj1.phoneinfo();
}
class Mobile {
    late String Brand;
    late String Model;
    late int Price;

phoneinfo(){
    print("Mobile Brand is $Brand");
    print("Mobile Model is $Model");
    print("Price is $Price");
}

}