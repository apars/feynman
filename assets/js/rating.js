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
    
    updateSurveyCount();
});

function updateSurveyCount()
{
    var radioscount =  document.getElementsByName('carindicate').length;
    var checkedcount = getCheckedCount(radioscount);
    var surveycount = "";
      
    if(document.getElementById("answeredsurvey")!=null)
    {
        document.getElementById("answeredsurvey").innerHTML = surveycount.concat(String(checkedcount),"/",String(radioscount));
    }
}

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
      updateSurveyCount();
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

function getCheckedCount( numslides ) {
    var classNamePrefix = 'ratings';
    var checkedcnt = 0;
    for (currSlide = 1; currSlide <= numslides; currSlide++)
    {
    var radios = document.getElementsByName( classNamePrefix.concat(String(currSlide)) );
    
    for( i = 0; i < radios.length; i++ ) {
        if( radios[i].checked ) {
            checkedcnt += 1;
        }
    }
    }
    return checkedcnt;
};

function getCheckedValue( groupName ) {
    var radios = document.getElementsByName( groupName );
    for( i = 0; i < radios.length; i++ ) {
        if( radios[i].checked ) {
            return radios[i].value;
        }
    }
    return null;
};  

idleTimer = null;
idleState = false;
idleWait = 30000;

(function ($) {

    $(document).ready(function () {
    
        $('*').bind('mousemove keydown scroll', function () {
        
            clearTimeout(idleTimer);
                    
            if (idleState == true) { 
                
                // Reactivated event
                //$("body").append("<p>Welcome Back.</p>");            
            }
            
            idleState = false;
            
            idleTimer = setTimeout(function () { 
                
                // Idle Event
                //$("body").append("<p>You've been idle for " + idleWait/1000 + " seconds.</p>");
                if(document.getElementById('mainsurveyform') != null)document.getElementById('mainsurveyform').submit(); return false;
                //redirectOnClick(base_url)

                idleState = true; }, idleWait);
        });
        
        $("body").trigger("mousemove");
    
    });
}) (jQuery)