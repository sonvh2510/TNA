<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="row solution-title">
			<div class="col-12">
				<h2 class="tna__title tna__title--main">
					<xsl:value-of select="/ProductList/ZoneTitle"></xsl:value-of>
				</h2>
				<div class="form-search">
					<input type="text" />
					<button>Submit</button>
				</div>
			</div>
		</div>
		<div class="ajaxresponse">
			<input type="hidden" id="txtKeyword">
			<xsl:attribute name="value">
				<xsl:value-of select="/ProductList/KeyWord"/>
			</xsl:attribute>
			</input>
			<input type="hidden" id="urlKeywordUrlOutParam">
			<xsl:attribute name="value">
				<xsl:value-of select="/ProductList/KeywordUrlOutParam"/>
			</xsl:attribute>
			</input>
			<input type="hidden" id="urlKeywordUrlWithParam">
			<xsl:attribute name="value">
				<xsl:value-of select="/ProductList/KeywordUrlWithParam"/>
			</xsl:attribute>
			</input>
			<div class="row item-list ajaxresponsewrap">
				<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="Product">
		<div class="item col-sm-6 col-lg-4">
			<figure>
				<div class="img-box">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="target"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
				</div>
				<figcaption>
					<h4>
						<a href="solution-detail.html">
							<xsl:value-of select="Title"></xsl:value-of>
						</a>
						<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
					</h4>
					<p>
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>