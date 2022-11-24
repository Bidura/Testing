<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/company">
<html>
<body>
<h4>Employee Management System</h4>
<br/>
<table border="5">
<tr>
    <th>ID</th>
    <TH>NAME</TH>
    <TH>AGE</TH>
    <TH>SALARY</TH>
    <TH>EMAIL</TH>
    <TH>MobNum</TH>
    <TH>Designation</TH>
    <TH>Promotion</TH>
</tr>
<xsl:for-each select="employee" >
    <tr>
        <td><xsl:value-of select="empid"/></td>
        <td><xsl:value-of select="name"/></td>
        <td><xsl:value-of select="age"></xsl:value-of></td>
        <td><xsl:value-of select="salary"></xsl:value-of></td>
        <td><xsl:value-of select="email"></xsl:value-of></td>
        <td><xsl:value-of select="phno"></xsl:value-of></td>
        <td><xsl:value-of select="post"></xsl:value-of></td>
        <td>
            <xsl:choose>
            <xsl:when test="age &gt;= 50 " >
            <h6>Associate Project Manager </h6>
            </xsl:when>
            <xsl:when test="age &gt;= 40 and age &lt;=49">
            <h6>Team Leader </h6>
            </xsl:when>
            <xsl:otherwise>
            <h6>Developer</h6>
            </xsl:otherwise>
            </xsl:choose>
        </td>
    </tr>
</xsl:for-each>
</table>
            
</body>
            
</html>
            
</xsl:template>
            
            
</xsl:stylesheet>