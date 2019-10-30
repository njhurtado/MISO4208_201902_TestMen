.class public Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;
.super Ljava/lang/Object;
.source "CodedUrlHeader.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/header/Header;


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final headerName:Ljava/lang/String;

.field private final headerValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "headerName"    # Ljava/lang/String;
    .param p2, "headerValue"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->headerName:Ljava/lang/String;

    .line 36
    if-eqz p2, :cond_1

    const-string v0, "<"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ">"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 39
    :cond_1
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->headerValue:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public static parse(Ljavax/servlet/http/HttpServletRequest;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;
    .locals 2
    .param p0, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-interface {p0, p1}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "headerValue":Ljava/lang/String;
    new-instance v1, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;

    invoke-direct {v1, p1, v0}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getCodedUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->getCodedUrls()[Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "codedUrls":[Ljava/lang/String;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCodedUrls()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "codedUrls":[Ljava/lang/String;
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->headerValue:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 85
    iget-object v5, p0, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->headerValue:Ljava/lang/String;

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "values":[Ljava/lang/String;
    array-length v5, v4

    new-array v0, v5, [Ljava/lang/String;

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_2

    .line 88
    aget-object v5, v4, v1

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 89
    .local v2, "p1":I
    if-gez v2, :cond_0

    .line 90
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid CodedURL header value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 92
    :cond_0
    aget-object v5, v4, v1

    const/16 v6, 0x3e

    invoke-virtual {v5, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 93
    .local v3, "p2":I
    if-gez v3, :cond_1

    .line 94
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid CodedURL header value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 96
    :cond_1
    aget-object v5, v4, v1

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    .end local v1    # "i":I
    .end local v2    # "p1":I
    .end local v3    # "p2":I
    .end local v4    # "values":[Ljava/lang/String;
    :cond_2
    return-object v0
.end method

.method public getHeaderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/header/CodedUrlHeader;->headerValue:Ljava/lang/String;

    return-object v0
.end method
