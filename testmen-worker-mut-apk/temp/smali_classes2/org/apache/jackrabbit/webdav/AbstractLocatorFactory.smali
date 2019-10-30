.class public abstract Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;
.super Ljava/lang/Object;
.source "AbstractLocatorFactory.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavLocatorFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$1;,
        Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;
    }
.end annotation


# static fields
.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private final pathPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathPrefix"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;->pathPrefix:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public createResourceLocator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "href"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 87
    if-nez p2, :cond_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request handle must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v7, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 93
    .local v7, "b":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 94
    invoke-virtual {v7, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 99
    :cond_1
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;->pathPrefix:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;->pathPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 100
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;->pathPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 101
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;->pathPrefix:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 103
    :cond_2
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;->pathPrefix:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 104
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;->pathPrefix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 109
    :cond_3
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 118
    :cond_4
    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 119
    const/4 v4, 0x0

    .line 120
    .local v4, "resourcePath":Ljava/lang/String;
    const/4 v3, 0x0

    .line 134
    .local v3, "workspacePath":Ljava/lang/String;
    :goto_0
    new-instance v0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;-><init>(Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$1;)V

    return-object v0

    .line 122
    .end local v3    # "workspacePath":Ljava/lang/String;
    .end local v4    # "resourcePath":Ljava/lang/String;
    :cond_5
    invoke-static {p2}, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .restart local v4    # "resourcePath":Ljava/lang/String;
    const/16 v0, 0x2f

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 125
    .local v8, "pos":I
    const/4 v0, -0x1

    if-ne v8, v0, :cond_6

    .line 127
    move-object v3, v4

    .restart local v3    # "workspacePath":Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v3    # "workspacePath":Ljava/lang/String;
    :cond_6
    invoke-virtual {p2, v2, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "workspacePath":Ljava/lang/String;
    goto :goto_0
.end method

.method public createResourceLocator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "workspacePath"    # Ljava/lang/String;
    .param p3, "resourcePath"    # Ljava/lang/String;

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;->createResourceLocator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    move-result-object v0

    return-object v0
.end method

.method public createResourceLocator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/jackrabbit/webdav/DavResourceLocator;
    .locals 7
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "workspacePath"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "isResourcePath"    # Z

    .prologue
    .line 170
    if-eqz p4, :cond_0

    move-object v4, p3

    .line 171
    .local v4, "resourcePath":Ljava/lang/String;
    :goto_0
    new-instance v0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;-><init>(Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$1;)V

    return-object v0

    .line 170
    .end local v4    # "resourcePath":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p3, p2}, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;->getResourcePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected abstract getRepositoryPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract getResourcePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
