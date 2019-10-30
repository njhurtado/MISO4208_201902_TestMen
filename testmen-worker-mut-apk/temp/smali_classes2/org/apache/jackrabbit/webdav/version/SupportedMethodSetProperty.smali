.class public Lorg/apache/jackrabbit/webdav/version/SupportedMethodSetProperty;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "SupportedMethodSetProperty.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<[",
        "Ljava/lang/String;",
        ">;",
        "Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;"
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final methods:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lorg/apache/jackrabbit/webdav/version/SupportedMethodSetProperty;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/version/SupportedMethodSetProperty;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .param p1, "methods"    # [Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->SUPPORTED_METHOD_SET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 42
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/version/SupportedMethodSetProperty;->methods:[Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/version/SupportedMethodSetProperty;->getValue()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/SupportedMethodSetProperty;->methods:[Ljava/lang/String;

    return-object v0
.end method

.method public toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 8
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .prologue
    .line 55
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/version/SupportedMethodSetProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->toXml(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 56
    .local v1, "elem":Lorg/w3c/dom/Element;
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/version/SupportedMethodSetProperty;->methods:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 57
    .local v4, "method":Ljava/lang/String;
    const-string v6, "supported-method"

    sget-object v7, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v1, v6, v7}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->addChildElement(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;)Lorg/w3c/dom/Element;

    move-result-object v5

    .line 58
    .local v5, "methodElem":Lorg/w3c/dom/Element;
    const-string v6, "name"

    sget-object v7, Lorg/apache/jackrabbit/webdav/version/DeltaVConstants;->NAMESPACE:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    invoke-static {v5, v6, v7, v4}, Lorg/apache/jackrabbit/webdav/xml/DomUtil;->setAttribute(Lorg/w3c/dom/Element;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/xml/Namespace;Ljava/lang/String;)V

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v4    # "method":Ljava/lang/String;
    .end local v5    # "methodElem":Lorg/w3c/dom/Element;
    :cond_0
    return-object v1
.end method
