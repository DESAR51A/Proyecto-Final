$(document).ready(function() {
    $('#datatable').DataTable( {
        "language": {
            "lengthMenu": "Mostrando _MENU_ registros por página",
            "zeroRecords": "Búsqueda sin resultados",
            "info": "Mostrando page _PAGE_ de _PAGES_",
            "infoEmpty": "No hay registros",
            "infoFiltered": "(filtrado de _MAX_ registros)",
            "search": "Buscar:"
        }
    } );
} );