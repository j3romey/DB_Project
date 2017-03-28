$(document).ready(function(){
    $(".courses").change(function(){
        var id=$(this).val();
        var dataString = 'id='+ id;

        console.log("Course Acronym: " + id);
        
        $.ajax({
            type: "POST",
            url: "course_number.php",
            data: dataString,
            cache: false,
            success: function(html){
                $(".number").html(html);
            } 
        });

        $(".desc").text('DESCRIPTION');

    });
});

$(document).ready(function(){
    
    $(".number").change(function(){
        var id=$(this).val();

        console.log("Course ID: " + id);
        
        var dataString = 'id='+ id;
        $.ajax({
            type: "POST",
            url: "test_description.php",
            data: dataString,
            cache: false,
            success: function(html){
                $(".desc").html(html);
            } 
        });
    });
});