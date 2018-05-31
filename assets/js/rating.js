/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$('li').on('click', function(){
    $('li').removeClass('active');
    $('li').removeClass('secondary-active');
    $(this).addClass('active');
    $(this).prevAll().addClass('secondary-active');
});

$('a[data-slide="prev"]').click(function() {
  $('#myCarousel').carousel('prev');
});

$('a[data-slide="next"]').click(function() {
  $('#myCarousel').carousel('next');
});

$('a[data-slide="prev"]').click(function() {
  $('#myCarousel').carousel('prev');
});

$('a[data-slide="next"]').click(function() {
  $('#myCarousel').carousel('next');
});

$(document).ready(function(){
  $("#carouselExampleIndicators").on('slid.bs.carousel', function () {
    currentIndex = $('div.active').index()+1;
    //$('.num').html(''+currentIndex+'/'+totalItems+'');
    //alert(String(currentIndex));
    if (currentIndex != 'null')
    {
      var classNamePrefix = 'ratings';
      checkedValue = getCheckedValue(classNamePrefix.concat(String(currentIndex)));
      if (checkedValue != null)
      {
        var idPrefix = 'rating_';
        var idRadioButton = idPrefix.concat(String(checkedValue));
        //alert(idRadioButton);
        var l = document.getElementById(idRadioButton);
        l.click();
        //alert(idRadioButton);
      }
    }
  });
});

function getCheckedValue( groupName ) {
    var radios = document.getElementsByName( groupName );
    for( i = 0; i < radios.length; i++ ) {
        if( radios[i].checked ) {
            return radios[i].value;
        }
    }
    return null;
};  