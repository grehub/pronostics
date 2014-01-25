(function () {
  var classementTable = $('.classement').dataTable({
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
  new FixedHeader(classementTable, {
    offsetTop: 40
  });
})();