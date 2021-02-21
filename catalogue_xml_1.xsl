<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" encoding="UTF-8" indent='yes'/>
   

    <xsl:template match="/">    
        <catalogue>
        <nameOfTheCompany> <xsl:value-of select="catalogue/name"/> </nameOfTheCompany>
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
                            <xsl:value-of select="picture"/> 
                        </picture>
                        <description> 
                            <xsl:value-of select="descriptionOfProduct"/> 
                        </description>
                        <features>  
                            <bodyD>
                            <xsl:for-each select="features/body">
                                <xsl:attribute name="material">
                                    <xsl:value-of select="bodyMaterial"/>
                                </xsl:attribute>
                                <xsl:attribute name="shape">
                                    <xsl:value-of select="bodyShape"/>
                                </xsl:attribute>
                                <xsl:attribute name="finish">
                                    <xsl:value-of select="bodyFinish"/>
                                </xsl:attribute>
                            </xsl:for-each>
                            </bodyD>
                            <neck>
                            <xsl:for-each select="features/neck">
                                <xsl:attribute name="material">
                                    <xsl:value-of select="neckMaterial"/>
                                </xsl:attribute>
                                <xsl:attribute name="shape">
                                    <xsl:value-of select="neckShape"/>
                                </xsl:attribute>
                                <xsl:attribute name="finish">
                                    <xsl:value-of select="neckFinish"/>
                                </xsl:attribute>
                                <xsl:attribute name="scaleLength">
                                    <xsl:value-of select="scaleLength"/>
                                </xsl:attribute>
                                <xsl:attribute name="fingerboardMaterial">
                                    <xsl:value-of select="fingerboardMaterial"/>
                                </xsl:attribute>
                                <xsl:attribute name="fingerboardRadius">
                                    <xsl:value-of select="fingerboardRadius"/>
                                </xsl:attribute>
                                <xsl:attribute name="numberOfFrets">
                                    <xsl:value-of select="numberOfFrets"/>
                                </xsl:attribute>
                                <xsl:attribute name="fretSize">
                                    <xsl:value-of select="fretSize"/>
                                </xsl:attribute>
                                <xsl:attribute name="nutMaterial">
                                    <xsl:value-of select="nutMaterial"/>
                                </xsl:attribute>
                                <xsl:attribute name="nutWidth">
                                    <xsl:value-of select="nutWidth"/>
                                </xsl:attribute>
                                <xsl:attribute name="positionInlays">
                                    <xsl:value-of select="positionInlays"/>
                                </xsl:attribute>
                                <xsl:attribute name="trussRod">
                                    <xsl:value-of select="trussRod"/>
                                </xsl:attribute>
                            </xsl:for-each>
                            </neck>
                            <electronics>
                            <xsl:for-each select="features/electronics">
                                <xsl:attribute name="neckPickup">
                                    <xsl:value-of select="neckPickup"/>
                                </xsl:attribute>
                                <xsl:attribute name="controls">
                                    <xsl:value-of select="controls"/>
                                </xsl:attribute>
                                <xsl:attribute name="switching">
                                    <xsl:value-of select="switching"/>
                                </xsl:attribute>
                                <xsl:attribute name="configuration">
                                    <xsl:value-of select="configuration"/>
                                </xsl:attribute>
                            </xsl:for-each>
                            </electronics>
                            <hardware>
                            <xsl:for-each select="features/hardware">
                                <xsl:attribute name="bridge">
                                    <xsl:value-of select="bridge"/>
                                </xsl:attribute>
                                <xsl:attribute name="finish">
                                    <xsl:value-of select="finish"/>
                                </xsl:attribute>
                                <xsl:attribute name="tuningMachines">
                                    <xsl:value-of select="tuningMachines"/>
                                </xsl:attribute>
                                <xsl:attribute name="pickguard">
                                    <xsl:value-of select="pickguard"/>
                                </xsl:attribute>
                                <xsl:attribute name="controlKnobs">
                                    <xsl:value-of select="controlKnobs"/>
                                </xsl:attribute>
                                <xsl:attribute name="neckPlate">
                                    <xsl:value-of select="neckPlate"/>
                                </xsl:attribute>
                            </xsl:for-each>    
                            </hardware>
                            <miscellaneous>
                            <xsl:for-each select="features/miscellaneous">
                                <xsl:attribute name="strings">
                                    <xsl:value-of select="strings"/>
                                </xsl:attribute>
                                <xsl:attribute name="legalNotice">
                                    <xsl:value-of select="legalNotice"/>
                                </xsl:attribute>
                            </xsl:for-each>
                            </miscellaneous>
                            <accessories>
                            <xsl:for-each select="features/accessories">
                                <xsl:attribute name="gigBag">
                                    <xsl:value-of select="@gigBag"/>
                                </xsl:attribute>
                                <xsl:attribute name="guitarPicks">
                                    <xsl:value-of select="@guitarPicks"/>
                                </xsl:attribute>
                            </xsl:for-each>
                            </accessories>
                        </features>
                        
                    </product>
                </xsl:for-each>
            </products>
        </catalogue>
    </xsl:template>
</xsl:stylesheet>