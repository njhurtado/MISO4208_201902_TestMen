.class public Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;
.super Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;
.source "OptionsMethod.java"


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final allowedMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final complianceClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->allowedMethods:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->complianceClasses:Ljava/util/Set;

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/version/OptionsInfo;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "optionsInfo"    # Lorg/apache/jackrabbit/webdav/version/OptionsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/client/methods/DavMethodBase;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->allowedMethods:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->complianceClasses:Ljava/util/Set;

    .line 55
    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p0, p2}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->setRequestBody(Lorg/apache/jackrabbit/webdav/xml/XmlSerializable;)V

    .line 58
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "optionsEntries"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;

    invoke-direct {v0, p2}, Lorg/apache/jackrabbit/webdav/version/OptionsInfo;-><init>([Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;-><init>(Ljava/lang/String;Lorg/apache/jackrabbit/webdav/version/OptionsInfo;)V

    .line 51
    return-void
.end method


# virtual methods
.method public getAllowedMethods()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->checkUsed()V

    .line 93
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->allowedMethods:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->allowedMethods:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getComplianceClasses()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->checkUsed()V

    .line 116
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->complianceClasses:Ljava/util/Set;

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->complianceClasses:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const-string v0, "OPTIONS"

    return-object v0
.end method

.method public getResponseAsOptionsResponse()Lorg/apache/jackrabbit/webdav/version/OptionsResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->checkUsed()V

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, "or":Lorg/apache/jackrabbit/webdav/version/OptionsResponse;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->getRootElement()Lorg/w3c/dom/Element;

    move-result-object v1

    .line 67
    .local v1, "rBody":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_0

    .line 68
    invoke-static {v1}, Lorg/apache/jackrabbit/webdav/version/OptionsResponse;->createFromXml(Lorg/w3c/dom/Element;)Lorg/apache/jackrabbit/webdav/version/OptionsResponse;

    move-result-object v0

    .line 70
    :cond_0
    return-object v0
.end method

.method public hasComplianceClass(Ljava/lang/String;)Z
    .locals 1
    .param p1, "complianceClass"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->checkUsed()V

    .line 105
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->complianceClasses:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->checkUsed()V

    .line 82
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->allowedMethods:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected isSuccess(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 165
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected processResponseHeaders(Lorg/apache/commons/httpclient/HttpState;Lorg/apache/commons/httpclient/HttpConnection;)V
    .locals 9
    .param p1, "state"    # Lorg/apache/commons/httpclient/HttpState;
    .param p2, "conn"    # Lorg/apache/commons/httpclient/HttpConnection;

    .prologue
    .line 143
    const-string v7, "Allow"

    invoke-virtual {p0, v7}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v0

    .line 144
    .local v0, "allow":Lorg/apache/commons/httpclient/Header;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v1, v4

    .line 146
    .local v6, "method":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->allowedMethods:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "method":Ljava/lang/String;
    :cond_0
    const-string v7, "DAV"

    invoke-virtual {p0, v7}, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->getResponseHeader(Ljava/lang/String;)Lorg/apache/commons/httpclient/Header;

    move-result-object v3

    .line 150
    .local v3, "dav":Lorg/apache/commons/httpclient/Header;
    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {v3}, Lorg/apache/commons/httpclient/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v2, v1, v4

    .line 152
    .local v2, "cl":Ljava/lang/String;
    iget-object v7, p0, Lorg/apache/jackrabbit/webdav/client/methods/OptionsMethod;->complianceClasses:Ljava/util/Set;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 155
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "cl":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    return-void
.end method
