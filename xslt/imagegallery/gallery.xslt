<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<!--Begin Zone-->
<xsl:template match="/">

	<section class="canhcam-gallery-1">
		<article class="gallery-list">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 top-list">
						<div class="row">
							<xsl:apply-templates select="/NewsList/News" mode="One"></xsl:apply-templates>
						</div>
						<div class="row">
							<xsl:apply-templates select="/NewsList/News" mode="Two"></xsl:apply-templates>
						</div>
					</div>
					<div class="col-lg-6 part-list">
						<div class="row">
							<xsl:apply-templates select="/NewsList/News" mode="Three"></xsl:apply-templates>
						</div>
						<div class="row">
							<xsl:apply-templates select="/NewsList/News" mode="Four"></xsl:apply-templates>
						</div>
					</div>
				</div>
				<div class="row">
					<xsl:apply-templates select="/NewsList/News" mode="Five"></xsl:apply-templates>
				</div>
			</div>
		</article>
	</section>
</xsl:template>
<xsl:template match="News" mode="One">
	<xsl:if test="position() = 1 ">
		<div class="col-12 item item-big">
			<figure>
				<div class="boxzoom">
					<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
				</div>
			</figure>
		</div>
	</xsl:if>
</xsl:template>

<xsl:template match="News" mode="Two">
	<xsl:if test="position() = 2 or position() = 3  ">
		<div class="col-md-6 col-12 item">
			<figure>
				<div class="boxzoom">
					<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
				</div>
			</figure>
		</div>
	</xsl:if>
</xsl:template>
<xsl:template match="News" mode="Three">
	<xsl:if test="position() = 4 or position() = 5  ">
		<div class="col-md-6 col-12 item">
			<figure>
				<div class="boxzoom">
					<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
				</div>
			</figure>
		</div>
	</xsl:if>
</xsl:template>
<xsl:template match="News" mode="Four">
	<xsl:if test="position() = 6 ">
		<div class="col-12 item item-big">
			<figure>
				<div class="boxzoom">
					<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
				</div>
			</figure>
		</div>
	</xsl:if>
</xsl:template>
<xsl:template match="News" mode="Five">
	<xsl:if test="position() > 6 ">
			<div class="col-lg-3 col-md-6 col-12 item">
			<figure>
				<div class="boxzoom">
					<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
				</div>
			</figure>
		</div>
	</xsl:if>
</xsl:template>

<xsl:template match="NewsImages">
	<a href="/img/gallery/1.jpg">
		<xsl:attribute name="href">
			<xsl:value-of select="ImageUrl" />
		</xsl:attribute>
		<img src="/img/gallery/1.jpg" alt="alt">
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl" />
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title" />
			</xsl:attribute>
		</img>
	</a>
</xsl:template>
</xsl:stylesheet>