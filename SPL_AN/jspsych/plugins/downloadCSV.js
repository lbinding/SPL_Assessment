function downloadCSV(csv, filename){
   var csvFile;
   var downloadLink;

   //retrieeve csv file from experiment
   csvFile = new Blob([csv], {type: "text/csv"});

   //download link

   downloadLink = document.createElement("a");

   //retrieve file name
   downloadLink.download = filename;

   //create link to file
   downloadLink.href = window.URL.createObjectURL(csvFile)

   // Hide download link
   downloadLink.style.displat = 'none';

   //add link to the DOM
   document.body.appendChild(downloadLink);

   downloadLink.click()


 }
