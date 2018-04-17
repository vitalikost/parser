document.addEventListener("turbolinks:load", function() {
    $('#link_tables').paginate({ limit: 5 });
    setInterval(function() {location.reload()}, 1000*60*5);
})
