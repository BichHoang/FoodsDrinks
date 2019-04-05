function set(id)
{
 for(var i=1;i<=5;i++)
     document.getElementById(i).style.color = '#333';
 for(var i=1;i<=id;i++)
     document.getElementById(i).style.color = 'yellow';
 document.getElementById('star').value = id;
}
