// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import DataTable from 'datatables.net-dt';
import 'datatables.net-responsive-dt';

let table = new DataTable('#product-table', {
    responsive: true
});
