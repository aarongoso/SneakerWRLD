 document.addEventListener("DOMContentLoaded", function() {
            // Get the input element and attach an input event listener
            var searchInput = document.getElementById("searchInput");
            searchInput.addEventListener("input", function() {
                // Get the entered code
                var enteredCode = searchInput.value.trim().toLowerCase();

                // Get all sneaker rows
                var sneakerRows = document.querySelectorAll("table tr");

                // Flag to check if a matching sneaker is found
                var sneakerFound = false;

                // Loop through each sneaker row
                for (var i = 1; i < sneakerRows.length; i++) {
                    var sneakerRow = sneakerRows[i];
                    var sneakerId = sneakerRow.querySelector("td:first-child").innerText.toLowerCase();

                    // Check if the entered code matches the sneaker id
                    if (sneakerId.includes(enteredCode)) {
                        sneakerRow.style.display = "";  // Show the matching sneaker
                        sneakerFound = true;
                    } else {
                        sneakerRow.style.display = "none";  // Hide non-matching sneakers
                    }
                }

                // Check if a matching sneaker is found and alert if not
                if (!sneakerFound) {
                    alert("Sneaker with code " + enteredCode + " not found!");
                }
            });
        });