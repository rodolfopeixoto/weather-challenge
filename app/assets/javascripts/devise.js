function checkIfPageIsSigninOrSignUp(){
  sign = $('#sign');
  if(sign.length == 0){
    console.log(sign + 'Aqui');
    $("body").css('background-color', 'white');
  }else{
    $("body").css('background-color', '#4DBEFF');
  }
}


$(document).ready(function () {
  checkIfPageIsSigninOrSignUp();
});
