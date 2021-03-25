function categoryDropdown () {

  const dropDownButton1 = document.getElementById("dropdown-btn-1")
  const dropDownButton2 = document.getElementById("dropdown-btn-2")
  const dropDownButton3 = document.getElementById("dropdown-btn-3")
  const dropDownButton4 = document.getElementById("dropdown-btn-4")

  const dropDownParent1 = document.getElementById("drop-down-1")
  const dropDownParent2 = document.getElementById("drop-down-2")
  const dropDownParent3 = document.getElementById("drop-down-3")
  const dropDownParent4 = document.getElementById("drop-down-4")

  const arrow1 = document.getElementById("arrow-1")
  const arrow2 = document.getElementById("arrow-2")
  const arrow3 = document.getElementById("arrow-3")
  const arrow4 = document.getElementById("arrow-4")

  dropDownButton1.addEventListener('click', function(){
    if (dropDownParent1.getAttribute("style") == "display:flex;") {
      dropDownParent1.removeAttribute("style", "display:flex;")
      arrow1.className="arrow_u";
    } else {
      dropDownParent1.setAttribute("style", "display:flex;")
      arrow1.className="arrow_o";
    }
  })

  dropDownButton2.addEventListener('click', function(){
    if (dropDownParent2.getAttribute("style") == "display:flex;") {
      dropDownParent2.removeAttribute("style", "display:flex;")
      arrow2.className="arrow_u";
    } else {
      dropDownParent2.setAttribute("style", "display:flex;")
      arrow2.className="arrow_o";
    }
  })

  dropDownButton3.addEventListener('click', function(){
    if (dropDownParent3.getAttribute("style") == "display:flex;") {
      dropDownParent3.removeAttribute("style", "display:flex;")
      arrow3.className="arrow_u";
    } else {
      dropDownParent3.setAttribute("style", "display:flex;")
      arrow3.className="arrow_o";
    }
  })

  dropDownButton4.addEventListener('click', function(){
    if (dropDownParent4.getAttribute("style") == "display:flex;") {
      dropDownParent4.removeAttribute("style", "display:flex;")
      arrow4.className="arrow_u";
    } else {
      dropDownParent4.setAttribute("style", "display:flex;")
      arrow4.className="arrow_o";
    }
  })
}

window.addEventListener('load', categoryDropdown)