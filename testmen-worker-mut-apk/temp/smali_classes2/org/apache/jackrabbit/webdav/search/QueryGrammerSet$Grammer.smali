.class Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;
.super Ljava/lang/Object;
.source "QueryGrammerSet.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Grammer"
.end annotation


# instance fields
.field private final hashCode:I

.field private final localName:Ljava/lang/String;

.field private final namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field final synthetic this$0:Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;


# direct methods
.method constructor <init>(Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V
    .locals 1
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;->this$0:Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;->localName:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 115
    invoke-static {p2, p3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getExpandedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;->hashCode:I

    .line 116
    return-void
.end method

.method static synthetic access$000(Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;)Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .locals 1
    .param p0, "x0"    # Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;

    .prologue
    .line 106
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;->localName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 125
    if-ne p1, p0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    instance-of v2, p1, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 131
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;->hashCode:I

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 4
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 138
    const-string v2, "supported-query-grammar"

    sget-object v3, Lorg/apache/jackrabbit/webdav/search/SearchConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 139
    .local v1, "sqg":Lorg/w3c/dom/Element;
    const-string v2, "grammar"

    sget-object v3, Lorg/apache/jackrabbit/webdav/search/SearchConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 140
    .local v0, "grammer":Lorg/w3c/dom/Element;
    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;->localName:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/jackrabbit/webdav/search/QueryGrammerSet$Grammer;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v0, v2, v3}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    .line 141
    return-object v1
.end method
