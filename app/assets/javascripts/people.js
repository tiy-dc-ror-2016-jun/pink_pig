$(document).ready(function(){
  $("#add-phone-number-btn").on("click", function addPhoneNumberHandler(event) {
    event.preventDefault();
    console.log("clicked");
  });

  $("._destroy").on("click", function removePhoneHandler(event) {
    var parents = $(event.target).parents(".form-group");
    console.log(parents);
    parents.hide();
  })

});
