$(document).ready(function(){$('.menu-toggle').click(function(){$('.header-bottom ul').slideToggle();});$('.pay-methods input[type="radio"]').click(function(){$('.pay-methods p').hide();if($(this).is(':checked')){$(this).siblings('p').show();}})
var b=0;var j=1;var y=0;$('.add-lang').click(function(e){e.preventDefault();var clone;if($('#user-lang').length==0){clone=$('#user-lang'+recOnUser()).clone(true);}else{clone=$('#user-lang').clone(true);}
j++;b++;$('.lang-row ul li:last-child').after(clone.attr('id','user-lang'+b).attr('class','cloned choosedLang'));checkCountLang();});function recOnUser(){y++;return y;}
$('#goOffline').change(function(){if($('#goOffline').val()==0){$(this).css('color','#a59ea5');}else{$(this).css('color','#372837');}})
checkCountLang();function checkCountLang(){var numberLang=$('.choosedLang').length;if(numberLang==1){$('.del-lang').hide();}else{$('.del-lang').show();}}
$('.del-lang').click(function(){var elem=$(this).parent('li');elem.remove();j--;checkCountLang();})
$('.tarif-title').click(function(){if($(window).width()>991){if($(this).parent('.tarif').hasClass('active')){return false;}else{$('.tarif').removeClass('active').addClass('inactive');$('.inactive .tarif-body').slideUp(100);$(this).siblings('.tarif-body').slideDown(100);$(this).parent('.tarif').addClass('active').removeClass('inactive');}}});$(function(){$('.minus').click(function(){var $input=$(this).parent().find('input');var count=parseInt($input.val())-1;count=count<1?1:count;$input.val(count);$input.change();return false;});$('.plus').click(function(){var $input=$(this).parent().find('input');$input.val(parseInt($input.val())+1);$input.change();return false;});});$('.item-servise').hover(function(){if($(window).width()>768){$(this).find('.top-bar').slideDown(100);}},function(){if($(window).width()>768){$(this).find('.top-bar').slideUp(100);}});$('.toggle-list').click(function(){$('.order>ul').toggleClass('open');});$('.login-popup').click(function(e){e.preventDefault();$('.popup-wrap').addClass('open');$('.back-arrow').addClass('switch');$('.logo .login-popup').addClass('switch');});$('.close-popup').click(function(e){e.preventDefault();$('.popup-wrap').removeClass('open');$('.back-arrow').removeClass('switch');$('.logo .login-popup').removeClass('switch');});$('ul.faq>li').click(function(){$(this).find('p').slideToggle(100);$(this).toggleClass('active');});if($(window).width()<991){$(".tarif").appendTo(".tarif-mob");}
$('.aside-menu-close').click(function(){$('.aside-menu-close').toggleClass('active');$('.aside-menu-body').toggleClass('active');});$('.aside-menu').click(function(){$('.aside-menu-close').toggleClass('active');$('.aside-menu-body').toggleClass('active');});var $status=$('.pagingInfo');var $slickElement=$('.item-slider-body');$slickElement.on('init reInit afterChange',function(event,slick,currentSlide,nextSlide){var i=(currentSlide?currentSlide:0)+1;$status.text(i+' из '+slick.slideCount);});$slickElement.slick({slidesToShow:1,slidesToScroll:1,arrows:true,fade:false,infinite:true,asNavFor:'.item-slider-nav'});$('.item-slider-nav').slick({slidesToShow:5,slidesToScroll:1,asNavFor:$slickElement,dots:false,infinite:true,arrows:false,centerMode:false,focusOnSelect:true});$('.servise-include p').click(function(){$(this).toggleClass('active');$('.servise-include ul').slideToggle(100);})
$('.more-filters').click(function(){$(this).toggleClass('active');if($(this).text()==="Больше фильтров"){$(this).text("Свернуть");}else{$(this).text("Больше фильтров");}
$('.filter-block.more .filter-block').slideToggle(100);})
$('.like').click(function(e){e.preventDefault();$(this).toggleClass('active');})
$('.recent-slider').slick({slidesToShow:4,slidesToScroll:1,autoplay:true,dots:false,infinite:true,arrows:true,accessibility:false,autoplaySpeed:5000,responsive:[{breakpoint:1329,settings:{slidesToShow:3,slidesToScroll:1,}},{breakpoint:768,settings:{slidesToShow:1,slidesToScroll:1,}}]});$('.main-slider').slick({slidesToShow:3,slidesToScroll:1,autoplay:true,dots:false,infinite:true,arrows:true,accessibility:false,autoplaySpeed:5000,responsive:[{breakpoint:1329,settings:{slidesToShow:2,slidesToScroll:1,infinite:true,}},{breakpoint:768,settings:{slidesToShow:1,slidesToScroll:1}}]});});