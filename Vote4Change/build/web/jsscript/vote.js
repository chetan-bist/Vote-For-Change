function addvote()
{
    
    var id=$("input[type=radio][name=flat]:checked").attr('id');
    data={candidateid:id};
    $.post("AddVoteControllerServlet",data,processresponse);
}
function processresponse(responseText)
{
    responseText=responseText.trim();
    if(responseText==="success")
    {
        swal("Success","Voting done","success").then(function (value){
            window.location="votingresponse.jsp";
        });
    }
    else
    {
        swal("Failure","Voting falied","error").then(function (value){
            window.location="votingresponse.jsp";
        });
    }
}

