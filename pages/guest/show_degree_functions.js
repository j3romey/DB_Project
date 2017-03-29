$(document).ready(function(){
    $(".degree").change(function(){
        var id=$(this).val();
        var dataString = 'id='+ id;

        console.log("Degree Selected: " + id);
        
        $(".course").text('Course Needed');

        $.ajax({
            type: "POST",
            url: "get_degree_course.php",
            data: dataString,
            cache: false,
            success: function(html){
                $(".course").html(html);
            } 
        });

    });
});

