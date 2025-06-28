void main(){
    Mobile obj = Mobile("Samsung","A22",50000);
obj.phoneinfo();    

    print("================");

    Mobile obj1 =Mobile("Iphone","16ProMax",600000);
  
obj1.phoneinfo();
}
class Mobile {
    late String Brand;
    late String Model;
    late int Price;
    Mobile(this.Brand,this.Model,this.Price);


void phoneinfo(){
    print("Mobile Brand is $Brand");
    print("Mobile Model is $Model");
    print("Price is $Price");
}

}