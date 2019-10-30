.class Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;
.super Ljava/lang/Object;
.source "SearchablePropertyReport.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrincipalSearchProperty"
.end annotation


# static fields
.field private static final ATTR_LANG:Ljava/lang/String; = "lang"

.field private static final XML_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final XML_PRINCIPAL_SEARCH_PROPERTY:Ljava/lang/String; = "principal-search-property"


# instance fields
.field private final description:Ljava/lang/String;

.field private final hashCode:I

.field private final language:Ljava/lang/String;

.field private final propName:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

.field final synthetic this$0:Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;


# direct methods
.method private constructor <init>(Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p2, "propName"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "language"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->this$0:Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    if-nez p2, :cond_0

    .line 157
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null is not a valid DavPropertyName for the DAV:principal-search-property."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->propName:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    .line 160
    iput-object p3, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->description:Ljava/lang/String;

    .line 161
    iput-object p4, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->language:Ljava/lang/String;

    .line 162
    invoke-virtual {p2}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->hashCode:I

    .line 163
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/String;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;
    .param p2, "x1"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$1;

    .prologue
    .line 142
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;-><init>(Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport;Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 187
    if-ne p1, p0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    instance-of v3, p1, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 191
    check-cast v0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;

    .line 193
    .local v0, "other":Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;
    iget v3, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->hashCode:I

    iget v4, v0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->hashCode:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;
    :cond_2
    move v1, v2

    .line 195
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->hashCode:I

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 6
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 169
    const-string v3, "principal-search-property"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v3, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 171
    .local v2, "psElem":Lorg/w3c/dom/Element;
    new-instance v1, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;-><init>()V

    .line 172
    .local v1, "pnSet":Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->propName:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    invoke-virtual {v1, v3}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->add(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;)Z

    .line 173
    invoke-virtual {v1, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 175
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->description:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 176
    const-string v3, "description"

    sget-object v4, Lorg/apache/jackrabbit/webdav/security/SecurityConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->description:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 177
    .local v0, "desc":Lorg/w3c/dom/Element;
    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->language:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 178
    const-string v3, "lang"

    sget-object v4, Lorg/apache/jackrabbit/webdav/xml/Namespace;->XML_NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/security/report/SearchablePropertyReport$PrincipalSearchProperty;->language:Ljava/lang/String;

    invoke-static {v0, v3, v4, v5}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->setAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)V

    .line 181
    .end local v0    # "desc":Lorg/w3c/dom/Element;
    :cond_0
    return-object v2
.end method
