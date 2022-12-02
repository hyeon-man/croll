function infoBox(){
    const div = $('<div>');
    const p = $('p');

}


$('.searchButton').on('click', function () {
    const charName = $('#charName').val();
    console.log("캐릭터명 : " +  charName);

    $.ajax('/char/' + charName, {
        method: 'get',
        contentType: 'application/json',
        dataType: 'json',
        success: function (result) {

            console.log(result);

            $('.name p').text(result.name);
            $('.infoTitle p').text(result.infoTitle);
            $('.level p').text(result.level);
            $('.server p').text(result.server);
            $('.job p').text(result.job);

        }

    })
});