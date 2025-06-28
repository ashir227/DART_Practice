void main(){
Mobile obj = Mobile("Samsung","S20 Pro Ultra", 700000);
obj.info();

}

class Mobile{
String? Brand;
String? Model;
int? Price;
Mobile(this.Brand,this.Model,this.Price);

info(){
  print("MObile Brand is $Brand");
  print("$Brand Model is $Model");
  print("$Brand price is $Price");
}


}