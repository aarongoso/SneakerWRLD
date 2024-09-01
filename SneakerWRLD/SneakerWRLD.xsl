<?xml version="1.0"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    
    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            
            <head>
                <title>Sneaker | SneakerWRLD</title>
                <script src="sneakerWRLD.js"></script>
                <style>
                    
                    body {
                        background-color: #272822;
                        display: flex;
                        flex-direction: column;
                        align-items: center;
                        justify-content: center;
                        height: 100vh;
                        margin: 0;
                    }
                    .container {
                        max-width: 1000px; /* Adjust the maximum width as needed */
                        width: 100%;
                    }
                    #searchInput {
                        box-shadow: 0 0 10px rgba(255, 255, 255, 0.3);
                        background-color: #333;
                        color: fff;
                        width: 100%;
                        padding: 10px;
                        margin-bottom: 10px;
                    }
                    table {
                        background-color: white;
                        width: 100%;
                        border-collapse: collapse;
                        border: 4px solid red; 
                    }
                    th, td {
                        border: 1px solid black;
                    }
                    
                    .navbar ul {
	             list-style-type: none;
	             overflow: hidden;
	             background-color: #d20106;
                     border: 2px solid white;
                     box-shadow: 0 6px 12px 0 rgba(0,0,0,.2);
	             position:center;
	             z-index:1;
                     width:100%;
                     }
                    
                    .navbar li {
	             float: center;
                     }
                                        
                     img {
	             display: block;
                     margin: auto;
                     }
                    
                     .navbar a {
	             display: block;
	             color: white;
	             text-align: center;
	             padding: 14px 16px;
	             font-family: Arial, Verdana, sans-serif;
	             text-decoration: none;
                     }

                     .navbar a:hover {
                      background-color: #790102;
                      }

                     nav {
                     text-align: center;
                     margin-right: 0px;
                     margin-bottom: 20px;
                     }

                     ul {
                     list-style-type: none;
                     padding: 0;
                     }

                     li {
                     display: inline-block;
                     margin-right: 10px;
                     }
                    
                    h2 {
                    padding-left: 39%;
                    text-align: centre;
                    font-family: "Mulish", sans-serif;
                    color: red;
                   
                    }
                    
                </style>
            </head>
            <link rel="icon" type="image/x-icon" href="favicon.ico"></link>
            <body>
                
		<nav class="navbar">
	    <ul>
	      <img src="SneakerWRLD .png" width="60px" />
	      <li><a class="nav-links" href="index.html">HOME</a></li>
	    <li><a class="nav-links" href="sneaker.html">VIEW SNEAKERS</a></li>
      <li><a class="nav-links" href="SneakerWRLD.html">SEARCH SNEAKERS</a></li>
	          <li><a class="nav-links" href="information.html">INFORMATION</a></li>
	      <li><a class="nav-links" href="giftcard.html">GIFTCARD</a></li>
	      <li><a class="nav-links" href="order.html">ORDER</a></li>
	    </ul>
	  </nav>
                <div class="container">
                    <h2>Search for Sneakers</h2>
                    
                   
                    <input type="text" id="searchInput" placeholder="Enter Sneaker code..." />
                    
                    <table>
                        <tr bgcolor="red">
                            <th>ID</th>
                            <th>Name</th>
                            <th>Brand</th>
                            <th>Description</th>
                            <th>Qizes</th>
                            <th>Quantity</th>
                            <th>Price</th>  
                        </tr>
                        <xsl:for-each select="product/sneaker">
                            <tr>
                                <td><xsl:value-of select="@id"/></td>
                                <td><xsl:value-of select="name"/></td>
                                <td><xsl:value-of select="brand"/></td>
                                <td><xsl:value-of select="description"/></td>
                                <td><xsl:value-of select="sizes"/></td>
                                <td><xsl:value-of select="quantity"/></td>
                                <td><xsl:value-of select="price"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
                
     
              
                <script src="sneakerWRLD.js"></script>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
