<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template name="products">
        <xsl:for-each select="/catalogue/products/product">    
            <div class="col-md-6 portfolio-item">
                <a href="#">
                    <h3>
                        <a href="#"><xsl:value-of select="nameOfTheProduct" /></a>
                    </h3>
                </a>
                <div class="col-md-auto">
                    <a href="#">
                        <img class="img-responsive">
                            <xsl:attribute name="src">
                                <xsl:value-of select="picture"/>
                            </xsl:attribute>
                            <div class="overlay">
                                <div class="text">
                                    <h3>ТЯЛО</h3>
                                    <table border="1px solid black">
                                        <tr>
                                            <th>Материал</th>
                                            <td><xsl:value-of select="features/body/bodyMaterial"/></td>
                                        </tr>
                                        <tr>
                                            <th>Форма</th>
                                            <td><xsl:value-of select="features/body/bodyShape"/></td>
                                        </tr>
                                        <tr>
                                            <th>Покритие</th>
                                            <td><xsl:value-of select="features/body/bodyFinish"/></td>
                                        </tr>
                                    </table>
                                    <h3>ГРИФ</h3>
                                    <table border="1px solid black">
                                        <tr>
                                            <th>Материал</th>
                                            <td><xsl:value-of select="features/neck/neckMaterial"/></td>
                                        </tr>
                                        <tr>
                                            <th>Покритие</th>
                                            <td><xsl:value-of select="features/neck/neckFinish"/></td>
                                        </tr>
                                        <tr>
                                            <th>Форма</th>
                                            <td><xsl:value-of select="features/neck/neckShape"/></td>
                                        </tr>
                                        <tr>
                                            <th>Дължина на скалата</th>
                                            <td><xsl:value-of select="features/neck/scaleLength"/></td>
                                        </tr>
                                        <tr>
                                            <th>Материал на грифа</th>
                                            <td><xsl:value-of select="features/neck/fingerboardMaterial"/></td>
                                        </tr>
                                        <tr>
                                            <th>Радиус на грифа</th>
                                            <td><xsl:value-of select="features/neck/fingerboardRadius"/></td>
                                        </tr>
                                        <tr>
                                            <th>Брой прагчета</th>
                                            <td><xsl:value-of select="features/neck/numberOfFrets"/></td>
                                        </tr>
                                        <tr>
                                            <th>Размер на прагчето</th>
                                            <td><xsl:value-of select="features/neck/fretSize"/></td>
                                        </tr>
                                        <tr>
                                            <th>Материал на ключа</th>
                                            <td><xsl:value-of select="features/neck/nutMaterial"/></td>
                                        </tr>
                                        <tr>
                                            <th>Ширина на ключа</th>
                                            <td><xsl:value-of select="features/neck/nutWidth"/></td>
                                        </tr>
                                        <tr>
                                            <th>Позиционни инкрустации</th>
                                            <td><xsl:value-of select="features/neck/positionInlays"/></td>
                                        </tr>
                                        <tr>
                                            <th>Тремоло</th>
                                            <td><xsl:value-of select="features/neck/trussRod"/></td>
                                        </tr>
                                    </table>
                                    <h3>ЕЛЕКТРОНИКА</h3>
                                    <table border="1px solid black">
                                        <tr>
                                            <th>Пикъп на грифа</th>
                                            <td><xsl:value-of select="features/electronics/neckPickup"/></td>
                                        </tr>
                                        <tr>
                                            <th>Контроли</th>
                                            <td><xsl:value-of select="features/electronics/controls"/></td>
                                        </tr>
                                        <tr>
                                            <th>Превключване</th>
                                            <td><xsl:value-of select="features/electronics/switching"/></td>
                                        </tr>
                                        <tr>
                                            <th>Конфигурация</th>
                                            <td><xsl:value-of select="features/electronics/configuration"/></td>
                                        </tr>
                                    </table>
                                    <h3>АПАРАТУРА</h3>
                                    <table border="1px solid black">
                                        <tr>
                                            <th>Струнодържател</th>
                                            <td><xsl:value-of select="features/hardware/bridge"/></td>
                                        </tr>
                                        <tr>
                                            <th>Покритие</th>
                                            <td><xsl:value-of select="features/hardware/hardwareFinish"/></td>
                                        </tr>
                                        <tr>
                                            <th>Тунинг Машини</th>
                                            <td><xsl:value-of select="features/hardware/tuningMachines"/></td>
                                        </tr>
                                        <tr>
                                            <th>Контроли</th>
                                            <td><xsl:value-of select="features/hardware/controlKnobs"/></td>
                                        </tr>
                                        <tr>
                                            <th>Плоча на грифа</th>
                                            <td><xsl:value-of select="features/hardware/neckPlate"/></td>
                                        </tr>
                                    </table>
                                    <h3>ДОПЪЛНИТЕЛНА ИНФОРМАЦИЯ</h3>
                                    <table border="1px solid black">
                                        <tr>
                                            <th>Струни</th>
                                            <td><xsl:value-of select="features/miscellaneous/strings"/></td>
                                        </tr>
                                        <tr>
                                            <th>Предупреждение</th>
                                            <td><xsl:value-of select="features/miscellaneous/legalNotice"/></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </img>
                    </a>
                </div>
            </div>
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
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>