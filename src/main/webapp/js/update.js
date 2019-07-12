$(function(){

    $("#use_update_btn").click(function(){
        //$.post("useradd",$("#add_frm").serialize(),function(){
         //   alert("1");
           // window.location.href="user_list";
        //},"json")
       // var formStr = $("#use_update_frm").serialize();
       // var params = decodeURIComponent(formStr,true);;
        $.ajax({
            type: "POST",
            url: "http://localhost:8080/user_update1",
            data: $("#use_update_frm").serialize(),
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function(){
                window.location.href="http://localhost:8080/user_list";
            }
        });
    })

    $("#message_update_btn").click(function(){
        //$.post("useradd",$("#add_frm").serialize(),function(){
        //   alert("1");
        // window.location.href="user_list";
        //},"json")
        var formdata = new FormData($("#message_update_frm")[0]);
        alert(formdata);
        $.ajax({
            type: "POST",
            url: "http://localhost:8080/message_update1",
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

    $("#type_update_btn").click(function(){
        //$.post("useradd",$("#add_frm").serialize(),function(){
        //   alert("1");
        // window.location.href="user_list";
        //},"json")
        $.ajax({
            type: "POST",
            url: "http://localhost:8080/type_update1",
            data: $("#type_update_frm").serialize(),
            success: function(){
                window.location.href="http://localhost:8080/type_list";
            }
        });
    })

    $("#contribute_update_btn").click(function(){
        //$.post("useradd",$("#add_frm").serialize(),function(){
        //   alert("1");
        // window.location.href="user_list";
        //},"json")
        var formdata1 = new FormData($("#contribute_update_frm")[0]);
        alert(formdata1);
        alert("1");
        $.ajax({
            type: "POST",
            url: "http://localhost:8080/contribute_update1",
            data: formdata1,
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function(){

                window.location.href="http://localhost:8080/contribute_list";
            }
        });
    })

})
