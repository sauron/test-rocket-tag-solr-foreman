//= require jquery
//= jquery-ui-1.8.18.custom.min
//= require tag-it

$(document).ready(function() {

  if($(".taggable").length > 0) {
    enableTagIt();
  }

});

function enableTagIt() {
  $(".taggable").tagit()
}
