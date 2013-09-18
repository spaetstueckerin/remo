$('body .hide').each(function(){
  $('#'+this.id).hide();
})

var cc_date = new Array();
var data = new Array();

//load data using jquery
/*    get all data and put it in a multidemensional array to use in the stack graph
 the firs argument must be the table id, the second argument must be the quantity
 of element that you want to represent and after this the class name for each
 element that you want to represent from the table*/
function getchartvalues() {
    var data = new Array();
    var table_name = arguments[0];
    var qty_elements = parseInt(arguments[1]);
    var class_name = new Array();
    for(var i=0;i<qty_elements;i++){
        class_name[i] = arguments[i+2];
    }
    var j=0;
    $("#" + table_name + " tbody tr").each(function() {
        var temp = new Array();
        for(i=0;i<class_name.length;i++){
            temp[i]= parseFloat($("." + class_name[i],this).text());
        }
        // console.log(temp);
        data[j]= temp;
        j++;
    });

    return data
}
//   get the date in a correct format when the date is from update_at field
//    the first argument must be the table id and the class name in the table must
//    be update_at
function getdates(){
    var tableid = arguments[0];
    var date = new Array();
    var z=0;
    $("#" + tableid + " tbody tr").each(function() {
        date[z] = $('.updated_at',this).text().slice(0,10)
        z++;
    })
    return date

}

function getvaluebargroup(){
    var data = new Array();
    var table_name = arguments[0];
    var field = arguments[1];
    var elements = getcommon(table_name,field).sort();
    var years = getcommon(table_name,'year').sort();
    var z=0;
    for(var i=0;i<years.length;i++){
        var j=0;
        var temp = new Array();
        $("#" + table_name + " tbody tr").each(function() {
            if(years[i]==$('.year',this).text()){
                for(var k=0;k<elements.length;k++){
                    if(elements[k]==$('.'+field,this).text()){
                        temp[k] = parseFloat($('.verbrauch',this).text());
                    }

                }
            }
        })
        for(var k=0;k<temp.length;k++){
            if(isNaN(temp[k]) || !temp[k]){
                temp[k]=0;
            }
        }
        if(temp.length!=elements.length){
            for(var k=0;k<elements.length;k++){
                if(isNaN(temp[k])){
                    temp[k]=0;
                }
            }

        }
        data[z]=temp;
        z++;
    }
    return data
}

function getcommon(){
    var common = new Array();
    var table_name = arguments[0];
    var field = arguments[1];
    var z=0;
    $("#" + table_name + " tbody tr").each(function() {
        if(z==0){
            common[z] = $('.'+ field,this).text();
            z++;
        }
        else{
            var j=0;
            for(var i=0;i<common.length;i++){
                var value = $('.'+ field,this).text();
                if(common[i]!= value){
                    j++;
                }
                else {
                    j=0;
                    break;
                }
            }
            if(j!=0){
                common[z] = $('.'+ field,this).text();
                z++;
            }
        }

    });

    return common
}
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