<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <table>
            <tr>
                <td>stt</td>
                <td>tài liệu</td>
                <td>ngày đăng</td>
                <td>xem</td>
                <td>tải về</td>
            </tr>
            <xsl:apply-templates select="News" mode="DeskTop"></xsl:apply-templates>
        </table>
        <div class="list-mobile row">
            <xsl:apply-templates select="News" mode="Mobile"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="DeskTop">
        <tr class="section-hover">
            <td>
                <a class="link-detail">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:if test="position() &lt; 10">
                        <xsl:text>0</xsl:text>
                    </xsl:if>
                    <xsl:value-of select="position()" />
                </a>
            </td>
            <td>
                <a class="link-detail">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                </a>
            </td>
            <td>
                <a class="link-detail">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                </a>
            </td>
            <td>
                <a class="see-detail">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">Xem chi tiết</xsl:text>
                </a>
            </td>
            <td>
                <a class="download">
                    <xsl:attribute name="href">
                        <xsl:value-of select="FileUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <span class="text">Tải về</span>
                    <span class="material-icons">vertical_align_bottom</span>
                </a>
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="News" mode="Mobile">
        <div class="col-md-6">
            <div class="list-item">
                <h3 class="title lcl lcl-2">
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </a>
                </h3>
                <p>Ngày đăng: 
                    
                    
                    <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                </p>
                <a class="btn-mob">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">Xem chi tiết</xsl:text>
                </a>
                <a class="btn-mob">
                    <xsl:attribute name="href">
                        <xsl:value-of select="FileUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <span class="text">Tải về</span>
                    <span class="material-icons">vertical_align_bottom</span>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>