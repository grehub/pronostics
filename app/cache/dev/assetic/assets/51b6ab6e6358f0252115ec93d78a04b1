(function () {
  var quoteTable = $('#quoteTable').dataTable({
    bPaginate: true,
    bLengthChange: false,
    bFilter: true,
    bSort: true,
    bInfo: false,
    bAutoWidth: false,
    bStateSave: true,
    "sPaginationType": "full_numbers"
  });
  new FixedHeader(quoteTable, {
    offsetTop: 10
  });


  $('#quoteTable_previous').html('Pr&eacute;c&eacute;dent');
  $('#quoteTable_next').html('Suivant');
  $('#quoteTable_first').html('Premi&egrave;re');
  $('#quoteTable_last').html('Derni&egrave;re');

  $('.votes').on('submit', 'form', function (e) {
    var $form = $(this),
        url = $form.attr('action'),
        submitButton = $form.find('input[type=submit]');

    e.preventDefault();

    submitButton.replaceWith('');
    $form.find('.message').html('<span class="message-sending">Envoi en cours...</span>');

    $.post(url, $form.serialize(), function (data) {
      $form.replaceWith(data);
    });
  });
  
  $('#quoteTable tbody').on('click', '#votePlus', function (e) {
    e.preventDefault();
    $.ajax({
      type:'POST',
      dataType:'html',
      success:function(data){
        alert('ok');
      },
      error:function(XMLHttpRequest, textStatus, errorThrows){
        alert('Une erreur est survenue durant l\'éxécution de la reqûete ajax.');
      },
      url: 'app_dev.php/vote/'+$(this).attr('rel')
    });
  });
  
  $('#quoteTable tbody').on('click', '#voteMinus', function (e) {
    e.preventDefault();
    alert('moins');
  });
})();