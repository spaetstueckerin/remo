# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	$('#bills').dataTable
	  # sPaginationType: "full_numbers",
	  bJQueryUI: true,
	  oLanguage:
	      "sLengthMenu": "Zeige _MENU_ Elemente pro Seite an"
	      "sInfo": "_START_ bis _END_ von _TOTAL_ Elementen"
	      "sInfoEmpty": "0 bis 0 von 0 Elemente"
	      "sEmptyTable": "Nichts gefunden - sorry"
	      "sZeroRecords": "Nichts gefunden - sorry"
	      "sInfoFiltered": "(Filtern von _MAX_ Elemente)"
	      "sSearch": "Suchen",