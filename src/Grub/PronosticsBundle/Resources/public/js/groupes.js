(function () {
  $('.groupes').dataTable({
    bPaginate: false,
    bLengthChange: false,
    bFilter: false,
    bSort: true,
    bInfo: false,
    bAutoWidth: false,
    bStateSave: true,
    aaSorting: [
      [1, 'desc']
    ]
  });
})();