
var weekdays = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
var months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

function fdts(y,m,d,hr,mn,s) {
  gmtDate = new Date(Date.UTC(y,m-1,d,hr,mn,s));
	text = months[gmtDate.getMonth()];
  text += ' '+gmtDate.getDate();
  ampm = 'AM';
  hours = gmtDate.getHours();
  if (hours > 11) { ampm = 'PM'; }
  if (hours == 0) { hours = 12; }
  if (hours > 12) { hours -= 12; }
  text += ' '+hours;
  minutes = gmtDate.getMinutes();
  if (minutes < 10) { minutes = '0'+minutes; }
  text += ':'+minutes;
  seconds = gmtDate.getSeconds();
  if (seconds < 10) { seconds = '0'+seconds; }
  text += ':'+seconds;
  text += ' '+ampm;
  document.write(text);
}
function fdt(y,m,d,hr,mn,s) {
  gmtDate = new Date(Date.UTC(y,m-1,d,hr,mn,s));
	text = months[gmtDate.getMonth()];
  text += ' '+gmtDate.getDate();
  ampm = 'AM';
  hours = gmtDate.getHours();
  if (hours > 11) { ampm = 'PM'; }
  if (hours == 0) { hours = 12; }
  if (hours > 12) { hours -= 12; }
  text += ' '+hours;
  minutes = gmtDate.getMinutes();
  if (minutes < 10) { minutes = '0'+minutes; }
  text += ':'+minutes;
  text += ' '+ampm;
  document.write(text);
}
function fd(y,m,d,hr,mn,s) {
  gmtDate = new Date(Date.UTC(y,m-1,d,hr,mn,s));
  text = months[gmtDate.getMonth()];
  text += ' '+gmtDate.getDate();
  document.write(text);
}