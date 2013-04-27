zen.e({
   
    
    site : {
        
        temp:{
            picnav_index:0,
            picnav_size:0
            
        },

        picnav : function(oTarget) {
            
            var iEverySize=156;
            
            if (oTarget!=undefined) {
                
                var iNow=zen.site.temp.picnav_index;
                
                if(oTarget=="p")
                {
                    oTarget=iNow-1;
                   
                }
                else if(oTarget=="n")
                {
                    oTarget=iNow+1;
                    
                }
                
                 if(oTarget<=0)
                    {
                        oTarget=0;
                        $('#index_piclist_nav .c_prev').parent().addClass('c_nav');
                        $('#index_piclist_nav .c_prev').parent().removeClass('c_nav_select');
                    }
                    else
                    {
                        $('#index_piclist_nav .c_prev').parent().addClass('c_nav_select');
                    }
                    
                    if(oTarget>=zen.site.temp.picnav_size)
                    {
                        oTarget=zen.site.temp.picnav_size;
                        $('#index_piclist_nav .c_next').parent().addClass('c_nav');
                        $('#index_piclist_nav .c_next').parent().removeClass('c_nav_select');
                    }
                     else
                    {
                        $('#index_piclist_nav .c_next').parent().addClass('c_nav_select');
                    }
                
                
                
                
                $('#index_piclist_box_item_'+iNow).removeClass('c_select');
                zen.site.temp.picnav_index=oTarget;
                 $("#index_piclist_box").animate({left:'-'+(oTarget*iEverySize).toString()+"px"});
                 $('#index_piclist_box_item_'+oTarget).addClass('c_select');

            } else {
                var iSize=$('#index_piclist_box ul li').size();
                if(iSize>7)
                {
                    for(var i=iSize-7,j=0;i>=j;i--)
                    {
                        $('#index_piclist_nav ul').prepend('<li id="index_piclist_box_item_'+i+'" onclick="zen.site.picnav('+(i.toString())+')"'+(i==0?'class="c_select"':'')+'></li>');
                    }
                    
                    zen.site.temp.picnav_size=iSize-7;
                    zen.site.picnav(0);
                }
                
                

            }
        }
    }
});
