window.isOnline = true;

window.addEventListener("online", function () {
    window.isOnline = true;
    $("#root").removeClass("offline");
});

window.addEventListener("offline", function () {
    window.isOnline = false;
    $("#root").addClass("offline");
});
