function CollapseExpand(monthname)
{
  var vis = "divVisible";
  var hid = "divHidden";
  var divObject = document.getElementById(monthname);
//  var currentCssClass = divObject.className;
  if (divObject.className == vis)
    divObject.className = hid;
  else if (divObject.className == hid)
    divObject.className = vis;
}