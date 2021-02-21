<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" encoding="UTF-8" indent='yes'/>
   

    <xsl:template match="/">    
        <catalogue>
            <xsl:attribute name="brandName">
                <xsl:value-of select="catalogue/name"/>
            </xsl:attribute>
             <products>
                <xsl:for-each select="catalogue/products/product">
                     <product>
                        <productInfo>
                            <xsl:value-of select="nameOfTheProduct"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="version"/>
                            <xsl:text> </xsl:text>
                            <xsl:value-of select="price"/>
                        </productInfo>
                        <picture> 
                            <xsl:attribute name="alt">
                                <xsl:value-of select="picture/@pictureAltText"/>
                            </xsl:attribute>
                            <xsl:value-of select="picture"/> 
                        </picture>
                        <description> 
                            <xsl:value-of select="descriptionOfProduct"/> 
                        </description>
                        <features>
                            <bodyDescription>
                            <xsl:for-each select="features/body">
                                <xsl:value-of select="bodyMaterial"/>
                                <xsl:text>;  </xsl:text>
                                <xsl:value-of select="bodyShape"/>
                                <xsl:text>;  </xsl:text>
                                <xsl:value-of select="bodyFinish"/>
                            </xsl:for-each>
                            </bodyDescription>
                            <neckDescription>
                                <xsl:for-each select="features/neck">
                                    <xsl:value-of select="neckMaterial"/>
                                    <xsl:text>;  </xsl:text>                    
                                    <xsl:value-of select="neckShape"/>
                                    <xsl:text>;  </xsl:text>                   
                                    <xsl:value-of select="neckFinish"/>
                                    <xsl:text>;  </xsl:text>                       
                                    <xsl:value-of select="scaleLength"/>
                                    <xsl:text>;  </xsl:text>                       
                                    <xsl:value-of select="fingerboardMaterial"/>
                                    <xsl:text>;  </xsl:text>                         
                                    <xsl:value-of select="fingerboardRadius"/>
                                    <xsl:text>;  </xsl:text>                          
                                    <xsl:value-of select="numberOfFrets"/>
                                    <xsl:text>;  </xsl:text>                              
                                    <xsl:value-of select="fretSize"/>
                                    <xsl:text>;  </xsl:text>  
                                    <xsl:value-of select="nutMaterial"/>
                                    <xsl:text>;  </xsl:text>
                                    <xsl:value-of select="nutWidth"/>
                                    <xsl:text>;  </xsl:text>
                                    <xsl:value-of select="positionInlays"/>
                                    <xsl:text>;  </xsl:text>
                                    <xsl:value-of select="trussRod"/>
                            </xsl:for-each>
                            </neckDescription>
                            <electronicsDescription>
                            <xsl:for-each select="features/electronics">
                                <xsl:value-of select="neckPickup"/>
                                <xsl:text>;  </xsl:text>
                                <xsl:value-of select="controls"/>
                                <xsl:text>;  </xsl:text>
                                <xsl:value-of select="switching"/>
                                <xsl:text>;  </xsl:text>
                                <xsl:value-of select="configuration"/>
                            </xsl:for-each>    
                            </electronicsDescription>
                            <hardwareDescription>
                            <xsl:for-each select="features/hardware">
                                <xsl:value-of select="bridge"/>
                                <xsl:text>;  </xsl:text>
                                <xsl:value-of select="finish"/>
                                <xsl:text>;  </xsl:text>
                                <xsl:value-of select="tuningMachines"/>
                                <xsl:text>;  </xsl:text>
                                <xsl:value-of select="pickguard"/>
                                <xsl:text>;  </xsl:text>
                                <xsl:value-of select="controlKnobs"/>
                                <xsl:text>;  </xsl:text>
                                <xsl:value-of select="neckPlate"/>
                            </xsl:for-each>
                            </hardwareDescription>
                            <miscellaneousDescription>
                            <xsl:for-each select="features/miscellaneous">
                                <xsl:value-of select="strings"/>
                                <xsl:text>;  </xsl:text>
                                <xsl:value-of select="legalNotice"/>
                            </xsl:for-each>
                            </miscellaneousDescription>
                            <accessoriesDescription>
                            <xsl:for-each select="features/accessories">
                                <xsl:value-of select="@gigBag"/>
                                <xsl:text>;  </xsl:text>
                                <xsl:value-of select="@guitarPicks"/>
                            </xsl:for-each>
                            </accessoriesDescription>
                        </features>
                     </product>
                </xsl:for-each>
            </products>
        </catalogue>

    </xsl:template>
</xsl:stylesheet>