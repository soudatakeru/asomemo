if (location.pathname.match("events/new")){
  document.addEventListener("DOMContentLoaded", () => {
    const inputElement = document.getElementById("events_tag_name");
    inputElement.addEventListener("keyup", () => {
      const keyword = document.getElementById("events_tag_name").value;
      console.log(keyword);
    });
  });
};