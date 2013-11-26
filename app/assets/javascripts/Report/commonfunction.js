$('body .hide').each(function(){
  $('#'+this.id).hide();
})

//the function show one element and hide other, including the button
//the first argument must be the button id and it must begin with show_ or hide_

function show_table_graph(){
    var type = arguments[0].slice(0,4);
    var element_name = arguments[1];
     if (type=='show'){
        $('#'+element_name).show('slow');
        $('#hide_'+element_name).show();
        $('#show_'+element_name).hide();
        }
    else {
        $('#'+element_name).hide('slow');
        $('#hide_'+element_name).hide();
        $('#show_'+element_name).show();
    }
}
 //show the first element and hide the second element
//the button name must be btn_<name of element>
function show_hide_elements(){
    $('#'+arguments[0]).show('slow');
    $('#'+arguments[1]).hide('slow');
  }

function show_table_data(){
    if (document.getElementById(arguments[0]).checked){
        $('#'+arguments[1]).show('slow');
    }
    else{
      $('#'+arguments[1]).hide('slow');
    }
}