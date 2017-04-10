$(document).ready(function(){
    $(".courses").change(function(){
        var id=$(this).val();
        var dataString = 'id='+ id;

        console.log("Course Acronym: " + id);
        
        $.ajax({
            type: "POST",
            url: "/php/course_number_select.php",
            data: dataString,
            cache: false,
            success: function(html){
                $(".number").html(html);
            } 
        });

    });
});

$(document).ready(function(){
    $(".number").change(function(){
        var id=$(this).val();
        var dataString = 'id='+ id;

        console.log("Course Acronym: " + id);
        
        $.ajax({
            type: "POST",
            url: "/php/get_section_radio.php",
            data: dataString,
            cache: false,
            success: function(html){
                $(".sections").html(html);
            } 
        });

    });
});

