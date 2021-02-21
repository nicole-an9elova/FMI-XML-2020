<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">

    <xsl:output method="text" indent="no" />
     <xsl:variable name="newline">
        <xsl:text>&#10;</xsl:text>
    </xsl:variable>
    
    <xsl:variable name="whitespace">
        <xsl:text> </xsl:text>
    </xsl:variable>

    <xsl:variable name="tab">
        <xsl:text>&#9; </xsl:text>
    </xsl:variable>

    
    <xsl:template match="/">
######################
# Каталог за китари  #
#      <xsl:value-of select="catalogue/name"/>      #
######################
        
        <xsl:value-of select="$newline" />
        <xsl:value-of select="$newline" />
        <xsl:for-each select="/catalogue/products/product">
            <xsl:value-of select="nameOfTheProduct"/>
            <xsl:text> [ </xsl:text>
            <xsl:value-of select="price"/>
            <xsl:text> ] </xsl:text>
            <xsl:value-of select="$newline"/>
            <xsl:text>--------------</xsl:text>
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="descriptionOfProduct"/>
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
            
            <xsl:text> ХАРАКТЕРИСТИКИ: </xsl:text>
            <xsl:value-of select="$newline"/>
            <xsl:text>-----------------</xsl:text>
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>

            <xsl:for-each select="features">
                <xsl:text> ① ТЯЛО </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> ② ГРИФ </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> ③ ЕЛЕКТРОНИКА </xsl:text>
                
                
                <xsl:value-of select="$newline"/>

                <xsl:text> • Материал: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Материал: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Пикъп на грифа: </xsl:text>
                

                <xsl:value-of select="$newline" /> 
                <xsl:value-of select="$whitespace" /> 
                <xsl:value-of select="body/bodyMaterial" /> 
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="neck/neckMaterial" /> 
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="electronics/neckPickup" /> 
                
                <xsl:value-of select="$newline"/>
                

                <xsl:text> • Покритие: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Покритие: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>   
                <xsl:text> • Контроли: </xsl:text>
                
                <xsl:value-of select="$newline" /> 
                <xsl:value-of select="$whitespace" /> 
                <xsl:value-of select="body/bodyFinish" /> 
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="neck/neckFinish" /> 
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="electronics/controls" /> 

                <xsl:value-of select="$newline"/>

                 <xsl:text> • Форма: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Форма: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>   
                <xsl:text> • Превключване: </xsl:text>

                <xsl:value-of select="$newline" /> 
                <xsl:value-of select="$whitespace" /> 
                <xsl:value-of select="body/bodyShape" /> 
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                
                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="neck/neckShape" /> 
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="electronics/switching" /> 

                <xsl:value-of select="$newline"/>

                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Дължина на скалата: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>   
                <xsl:text> • Конфигурация: </xsl:text>

                <xsl:value-of select="$newline" /> 
                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="neck/scaleLength" /> 
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="electronics/configuration" /> 

                <xsl:value-of select="$newline"/>

                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Материал на грифа: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>  
                

                <xsl:value-of select="$newline" /> 
                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="neck/fingerboardMaterial" /> 


                <xsl:value-of select="$newline"/>

                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Радиус на грифа: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>  
                

                <xsl:value-of select="$newline" /> 
                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="neck/fingerboardRadius" /> 

                <xsl:value-of select="$newline"/>

                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Брой прагчета: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>  
                

                <xsl:value-of select="$newline" /> 
                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="neck/numberOfFrets" /> 

                <xsl:value-of select="$newline"/>

                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Размер на прагчето: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>  
                

                <xsl:value-of select="$newline" /> 
                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="neck/fretSize" />
                
                <xsl:value-of select="$newline"/>

                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Материал на ключа: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>  
                

                <xsl:value-of select="$newline" /> 
                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="neck/nutMaterial" /> 

                <xsl:value-of select="$newline"/>

                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Ширина на ключа: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>  
                

                <xsl:value-of select="$newline" /> 
                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="neck/nutWidth" /> 

                <xsl:value-of select="$newline"/>

                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Позиционни инкрустации: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>  
                

                <xsl:value-of select="$newline" /> 
                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="neck/positionInlays" /> 

                <xsl:value-of select="$newline"/>

                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Тремоло: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>  
                

                <xsl:value-of select="$newline" /> 
                
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="neck/trussRod" /> 

                <xsl:value-of select="$newline"/>
                <xsl:value-of select="$newline"/>
                <xsl:value-of select="$newline"/>

                <xsl:text> ④ АПАРАТУРА </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> ⑤ ДОПЪЛНИТЕЛНА ИНФОРМАЦИЯ </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> ⑥ АКСЕСОАРИ </xsl:text>

                <xsl:value-of select="$newline"/>

                <xsl:text> • Струнодържател: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                
                <xsl:text> • Струни: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Kалъф: </xsl:text>
                    <xsl:if test="accessories/@gigBag = 'Yes'">
                        <xsl:text> ✔ </xsl:text> 
                    </xsl:if>
                    <xsl:if test="accessories/@gigBag = 'No'">
                        <xsl:text> ✖ </xsl:text>
                    </xsl:if>
                

                <xsl:value-of select="$newline" /> 
                <xsl:value-of select="$whitespace" /> 
                <xsl:value-of select="hardware/bridge" /> 
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="miscellaneous/strings" /> 

                <xsl:value-of select="$newline"/>

                <xsl:text> • Покритие: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:text> • Предупреждение: </xsl:text>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                
                <xsl:text> • Перца: </xsl:text>
                    <xsl:if test="accessories/@guitarPicks = 'Yes'">
                        <xsl:text> ✔ </xsl:text>
                    </xsl:if>
                    <xsl:if test="accessories/@guitarPicks = 'No'">
                        <xsl:text> ✖ </xsl:text> 
                    </xsl:if>
                

                <xsl:value-of select="$newline" /> 
                <xsl:value-of select="$whitespace" /> 
                <xsl:value-of select="hardware/hardwareFinish" /> 
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$tab"/>
                <xsl:value-of select="$whitespace" />
                <xsl:value-of select="miscellaneous/legalNotice" /> 
                
                <xsl:value-of select="$newline"/>

                <xsl:text> • Tунинг машини: </xsl:text>

                <xsl:value-of select="$newline" /> 
                <xsl:value-of select="$whitespace" /> 
                <xsl:value-of select="hardware/tuningMachines" /> 

                <xsl:value-of select="$newline"/>

                <xsl:text> • Контроли: </xsl:text>

                <xsl:value-of select="$newline" /> 
                <xsl:value-of select="$whitespace" /> 
                <xsl:value-of select="hardware/controlKnobs" /> 
                
                <xsl:value-of select="$newline"/>

                <xsl:text> • Плоча на грифа: </xsl:text>

                <xsl:value-of select="$newline" /> 
                <xsl:value-of select="$whitespace" /> 
                <xsl:value-of select="hardware/neckPlate" /> 

                <xsl:value-of select="$newline"/>
                <xsl:text>-----------------------------------------------------------------------------------------------------------------------</xsl:text>
            </xsl:for-each>
            <xsl:value-of select="$newline"/>
            <xsl:value-of select="$newline"/>
        </xsl:for-each>
        

    

    </xsl:template>
</xsl:stylesheet>