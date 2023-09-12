

function sendData(){

return verifPC()

}



















function verifPC(){
   mail= document.getElementById('mail').value
   pas= document.getElementById('pass').value


    if(mail ==""|| pas ==""){
      
        return false
    }
    else{
      return true
    }


}


