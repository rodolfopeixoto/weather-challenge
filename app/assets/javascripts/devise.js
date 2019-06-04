function checkIfPageIsSigninOrSignUp(){
  sign = $('#sign');
  if(sign.length == 0){
    $("body").css('background-color', '#f9f9f9');
  }else{
    $("body").css('background-color', '#4DBEFF');
  }
}


$(document).ready(function () {
  checkIfPageIsSigninOrSignUp();
});
