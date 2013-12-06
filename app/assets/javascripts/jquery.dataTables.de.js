$(document).ready(function() {
    $('#t').dataTable({
        "oLanguage": {
            "sLengthMenu": "Zeige _MENU_ Elemente pro Seite an",
            "sZeroRecords": "Nichts gefunden - sorry",
            "sEmptyTable": "Nichts gefunden - sorry",
            "sInfo": "_START_ bis _END_ von _TOTAL_ Elemente",
            "sInfoEmpty": "0 bis 0 von 0 Elemente",
            "sInfoFiltered": "(Filtern von _MAX_ Elemente)",
            "oPaginate": {
                "sFirst": "Erste Seite",
                "sLast": "Letzte Seite",
                "sNext": "Nächste Seite",
                "sPrevious": "Vorherige Seite"
            },
            "sSearch": "Suchen"
        }
});
} );
