class Login {
  loginin(){

    print("this is login");
    print("This is not login");
  }
}
class admin implements Login{
  @override
  
  loginin() {
   print("This not login now ");
  }
}
void main(List<String> args) {
  Login obj = Login();
  obj.loginin();
}