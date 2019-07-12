$(function(){

    $("#use_add_btn").click(function(){
        //$.post("useradd",$("#add_frm").serialize(),function(){
         //   alert("1");
           // window.location.href="user_list";
        //},"json")
        $.ajax({
            type: "POST",
            url: "http://localhost:8080/user_add",
            data: $("#use_add_frm").serialize(),
            success: function(){
                window.location.href="http://localhost:8080/user_list";
            }
        });
    })

    $("#type_add_btn").click(function(){
            //$.post("useradd",$("#add_frm").serialize(),function(){
            //   alert("1");
            // window.location.href="user_list";
            //},"json")
            $.ajax({
                type: "POST",
                url: "http://localhost:8080/type_add",
                data: $("#type_add_frm").serialize(),
                success: function(){
                    window.location.href="http://localhost:8080/type_list";
                }
            });
    })



    $("#message_add_btn").click(function(){
        //$.post("useradd",$("#add_frm").serialize(),function(){
        //   alert("1");
        // window.location.href="user_list";
        //},"json")
        var formdata = new FormData($("#message_add_frm")[0]);
        $.ajax({
            type: "POST",
            url: "http://localhost:8080/message_add",
            data: formdata,
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function(){

                window.location.href="http://localhost:8080/message_list";
            }
        });
    })

    $("#contribute_add_btn").click(function(){
        //$.post("useradd",$("#add_frm").serialize(),function(){
        //   alert("1");
        // window.location.href="user_list";
        //},"json")
        $.ajax({
            type: "POST",
            url: "http://localhost:8080/contribute_add",
            data: $("#contribute_add_frm").serialize(),
            success: function(){
                window.location.href="http://localhost:8080/contribute_list";
            }
        });
    })

})
