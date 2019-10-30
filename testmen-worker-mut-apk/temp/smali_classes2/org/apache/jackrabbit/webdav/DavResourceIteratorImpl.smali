.class public Lorg/apache/jackrabbit/webdav/DavResourceIteratorImpl;
.super Ljava/lang/Object;
.source "DavResourceIteratorImpl.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/DavResourceIterator;


# static fields
.field public static final EMPTY:Lorg/apache/jackrabbit/webdav/DavResourceIterator;

.field private static log:Lorg/slf4j/Logger;


# instance fields
.field private it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/jackrabbit/webdav/DavResource;",
            ">;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const-class v0, Lorg/apache/jackrabbit/webdav/DavResourceIteratorImpl;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/jackrabbit/webdav/DavResourceIteratorImpl;->log:Lorg/slf4j/Logger;

    .line 35
    new-instance v0, Lorg/apache/jackrabbit/webdav/DavResourceIteratorImpl;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/jackrabbit/webdav/DavResourceIteratorImpl;-><init>(Ljava/util/List;)V

    sput-object v0, Lorg/apache/jackrabbit/webdav/DavResourceIteratorImpl;->EMPTY:Lorg/apache/jackrabbit/webdav/DavResourceIterator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/jackrabbit/webdav/DavResource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/apache/jackrabbit/webdav/DavResource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/DavResourceIteratorImpl;->it:Ljava/util/Iterator;

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/jackrabbit/webdav/DavResourceIteratorImpl;->size:I

    .line 47
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/DavResourceIteratorImpl;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/DavResourceIteratorImpl;->next()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/jackrabbit/webdav/DavResource;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/DavResourceIteratorImpl;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/DavResource;

    return-object v0
.end method

.method public nextResource()Lorg/apache/jackrabbit/webdav/DavResource;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/DavResourceIteratorImpl;->next()Lorg/apache/jackrabbit/webdav/DavResource;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Remove not allowed with DavResourceIteratorImpl"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lorg/apache/jackrabbit/webdav/DavResourceIteratorImpl;->size:I

    return v0
.end method
