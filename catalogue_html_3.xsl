<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template name="products">
        <xsl:for-each select="/catalogue/products/product">
            <div class="row">
                <div class="col-md-auto">
                    <a href="#">
                        <img class="img-responsive">
                            <xsl:attribute name="src">
                                <xsl:value-of select="picture"/>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="@pictureAltText"/>
                            </xsl:attribute>
                            
                        </img>
                    </a>
                    <a href="#foo"><h6><xsl:value-of select="nameOfTheProduct" /></h6></a>
                    <h6><xsl:value-of select="version" /></h6>       
                    <p>Цена: <xsl:value-of select="price" /></p>
                    <table style="border: 1px solid brown">
                    <tr><th>Сертификат: </th>
                        <xsl:if test="@certificate = 'Yes'">
                           <td> ✔ </td>
                        </xsl:if>
                        <xsl:if test="@certificate = 'No'">
                           <td> ✖ </td>
                        </xsl:if>      
                    </tr>
                    <p><th>Връщане: </th>
                        <xsl:if test="@returns = 'Yes'">
                           <td> ✔ </td>
                        </xsl:if>
                        <xsl:if test="@returns = 'No'">
                           <td> ✖ </td>
                        </xsl:if>      
                    </p>
                    </table>
                </div>
                <div class="space">
                </div>
                <!-- <div class="modal-dialog modal-lg"><h1>hahahha</h1></div> -->
                
            </div>
            <hr />
        </xsl:for-each>
    </xsl:template>

    

    <xsl:template match="catalogue">
        <html lang="en">
        <head>
            <meta charset="utf-8"/>
            <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
            <meta name="viewport" content="width=device-width, initial-scale=1"/>
            <link href="st_html.css" rel="stylesheet" />
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"/>    
        </head>
        <body>
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Каталог за китари
                            <small><xsl:value-of select="name"/></small>
                        </h1>
                    </div>
                </div>
                <div class="row">
                    <xsl:call-template name="products" />
                    
                </div>
               
                <footer>
                    <div class="row">
                        <div class="col-lg-12">
                            <p>XML Програмиране 2021 - Никол Ангелова</p>
                        </div>
                    </div>
                </footer>
               
            </div>
            <script type="text/javascript">
                function view() { 
	                document.getElementById('a').setAttribute('style', 'display:block'); 
                } 
            </script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>