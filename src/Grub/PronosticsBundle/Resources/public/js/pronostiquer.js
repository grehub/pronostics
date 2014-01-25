(function () {
  $('.games').on('submit', 'form', function (e) {
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

  $('.games').on('change', 'select', function (e) {
    var $select = $(this);
    if ($select.find('option[value=' + $select.val() + ']')[0].defaultSelected === false) {
      $select.parents('.game').addClass('modified');
    } else {
      $select.parents('.game').removeClass('modified');
    }
  });

  $('.games').on('blur change click drop focusout input keyup reset textinput', 'input', function (e) {
    var $input = $(this);
    if ($input.val() !== this.defaultValue) {
      $input.parents('.game').addClass('modified');
    } else {
      $input.parents('.game').removeClass('modified');
    }
  });

  if (location.hash === '') {
    var days = ['Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi'],
        months = ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'],
        today = new Date();

    location.hash = '#' + days[today.getDay()] + '-' + today.getDate() + '-' + months[today.getMonth()];
  }
})();