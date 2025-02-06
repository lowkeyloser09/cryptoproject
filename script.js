document.getElementById('searchInput').addEventListener('input', function() {
  filterTable();
});

function filterTable() {
  const input = document.getElementById("searchInput").value.toLowerCase();
  const tables = document.querySelectorAll("table");
  
  tables.forEach(table => {
      const rows = table.getElementsByTagName("tr");
      
      for (let i = 1; i < rows.length; i++) { 
          const cells = rows[i].getElementsByTagName("td");
          let match = false;
          
          for (let j = 0; j < cells.length; j++) {
              const cellContent = cells[j].textContent.toLowerCase();
              
              if (cellContent.includes(input)) {
                  match = true;
                  break;
              }
          }
          
          rows[i].style.display = match ? "" : "none";
      }
  });
}



  function goToWebsite(row) {
    const url = row.dataset.url; 
  
    window.location.href = url;
  }
  