.class Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;
.super Ljava/lang/Object;
.source "AbstractLocatorFactory.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavResourceLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DavResourceLocatorImpl"
.end annotation


# instance fields
.field private final factory:Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;

.field private final href:Ljava/lang/String;

.field private final prefix:Ljava/lang/String;

.field private final resourcePath:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;

.field private final workspacePath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;)V
    .locals 5
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "workspacePath"    # Ljava/lang/String;
    .param p4, "resourcePath"    # Ljava/lang/String;
    .param p5, "factory"    # Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;

    .prologue
    .line 216
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->this$0:Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->prefix:Ljava/lang/String;

    .line 219
    iput-object p3, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->workspacePath:Ljava/lang/String;

    .line 220
    iput-object p4, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->resourcePath:Ljava/lang/String;

    .line 221
    iput-object p5, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->factory:Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;

    .line 223
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "buf":Ljava/lang/StringBuffer;
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 228
    invoke-virtual {p4, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resource path \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not start with workspace path \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 231
    :cond_0
    invoke-static {p4}, Lorg/apache/jackrabbit/webdav/util/EncodeUtil;->escapePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 234
    .local v1, "length":I
    if-eqz v1, :cond_2

    if-lez v1, :cond_3

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_3

    .line 235
    :cond_2
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->href:Ljava/lang/String;

    .line 238
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;
    .param p6, "x5"    # Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$1;

    .prologue
    .line 200
    invoke-direct/range {p0 .. p5}, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;-><init>(Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 381
    if-ne p1, p0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v1

    .line 384
    :cond_1
    instance-of v3, p1, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 385
    check-cast v0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;

    .line 386
    .local v0, "other":Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->hashCode()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->hashCode()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;
    :cond_2
    move v1, v2

    .line 388
    goto :goto_0
.end method

.method public getFactory()Lorg/apache/jackrabbit/webdav/DavLocatorFactory;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->factory:Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;

    return-object v0
.end method

.method public getHref(Z)Ljava/lang/String;
    .locals 3
    .param p1, "isCollection"    # Z

    .prologue
    .line 326
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->href:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->href:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->href:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getRepositoryPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->factory:Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->getResourcePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->getWorkspacePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory;->getRepositoryPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResourcePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->resourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkspaceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->workspacePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->workspacePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->workspacePath:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 285
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWorkspacePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->workspacePath:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->href:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isRootLocation()Z
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->getWorkspacePath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameWorkspace(Ljava/lang/String;)Z
    .locals 2
    .param p1, "workspaceName"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->getWorkspaceName()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "thisWspName":Ljava/lang/String;
    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public isSameWorkspace(Lorg/apache/jackrabbit/webdav/DavResourceLocator;)Z
    .locals 1
    .param p1, "locator"    # Lorg/apache/jackrabbit/webdav/DavResourceLocator;

    .prologue
    .line 298
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lorg/apache/jackrabbit/webdav/DavResourceLocator;->getWorkspaceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/jackrabbit/webdav/AbstractLocatorFactory$DavResourceLocatorImpl;->isSameWorkspace(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
