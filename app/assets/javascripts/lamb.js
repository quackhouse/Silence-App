// function Lamb() {


//  comments to change
// }

// var lamb = new Lamb();

$('#lamb-button').on("click", function(){
  $.ajax({
    type: "POST",
    url: "/lambs",
    dataType: "json"
  }).done(function(data){
    // debugger;
    var liTag = document.createElement('li');
    liTag.innerHTML = "lamb";
    liTag.id = data.id;
    liTag.className = "lamb";
    $( document.body ).append( liTag );

    $('li').on("click", function(e) {
      // alert("getting here");
      $.ajax({
        type: "PUT",
        url: "/lambs/" + e.target.id,
        dataType: "json"
      }).done(function(data){
        var liTag = document.getElementById(data.id);
        liTag.innerHTML = "baaa";
      });
    });

  });
});
