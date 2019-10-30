.class Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;
.super Ljava/lang/Object;
.source "ResourceType.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/property/ResourceType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeName"
.end annotation


# instance fields
.field private final hashCode:I

.field private final localName:Ljava/lang/String;

.field private final namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V
    .locals 1
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;->localName:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 185
    invoke-static {p1, p2}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->getExpandedName(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;->hashCode:I

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Lorg/apache/jackrabbit/webdav/property/ResourceType$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p3, "x2"    # Lorg/apache/jackrabbit/webdav/property/ResourceType$1;

    .prologue
    .line 176
    invoke-direct {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 195
    instance-of v1, p1, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;

    if-eqz v1, :cond_0

    .line 196
    iget v1, p0, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;->hashCode:I

    check-cast p1, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;

    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p1, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;->hashCode:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 198
    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;->hashCode:I

    return v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 202
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;->localName:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/property/ResourceType$TypeName;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {p1, v0, v1}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->createElement(Lorg/w3c/dom/Document;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method
