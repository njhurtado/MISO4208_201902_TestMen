.class Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;
.super Ljava/lang/Object;
.source "DavPropertySet.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/property/DavPropertyIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropIter"
.end annotation


# instance fields
.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

.field private next:Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/jackrabbit/webdav/property/DavPropertySet;


# direct methods
.method private constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavPropertySet;)V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertySet;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V

    .line 241
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavPropertySet;Lorg/apache/jackrabbit/webdav/property/DavPropertySet$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
    .param p2, "x1"    # Lorg/apache/jackrabbit/webdav/property/DavPropertySet$1;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertySet;)V

    return-void
.end method

.method private constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavPropertySet;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V
    .locals 1
    .param p2, "namespace"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->this$0:Lorg/apache/jackrabbit/webdav/property/DavPropertySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p2, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    .line 249
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet;->access$200(Lorg/apache/jackrabbit/webdav/property/DavPropertySet;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->iterator:Ljava/util/Iterator;

    .line 250
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->seek()V

    .line 251
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavPropertySet;Lorg/apache/jackrabbit/webdav/xml/Namespace;Lorg/apache/jackrabbit/webdav/property/DavPropertySet$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/jackrabbit/webdav/property/DavPropertySet;
    .param p2, "x1"    # Lorg/apache/jackrabbit/webdav/xml/Namespace;
    .param p3, "x2"    # Lorg/apache/jackrabbit/webdav/property/DavPropertySet$1;

    .prologue
    .line 225
    invoke-direct {p0, p1, p2}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertySet;Lorg/apache/jackrabbit/webdav/xml/Namespace;)V

    return-void
.end method

.method private seek()V
    .locals 2

    .prologue
    .line 290
    :cond_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/property/DavProperty;

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->next:Lorg/apache/jackrabbit/webdav/property/DavProperty;

    .line 292
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->namespace:Lorg/apache/jackrabbit/webdav/xml/Namespace;

    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->next:Lorg/apache/jackrabbit/webdav/property/DavProperty;

    invoke-interface {v1}, Lorg/apache/jackrabbit/webdav/property/DavProperty;->getName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;->getNamespace()Lorg/apache/jackrabbit/webdav/xml/Namespace;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/jackrabbit/webdav/xml/Namespace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    :cond_1
    :goto_0
    return-void

    .line 296
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->next:Lorg/apache/jackrabbit/webdav/property/DavProperty;

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->next:Lorg/apache/jackrabbit/webdav/property/DavProperty;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->next()Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 276
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->nextProperty()Lorg/apache/jackrabbit/webdav/property/DavProperty;

    move-result-object v0

    return-object v0
.end method

.method public nextProperty()Lorg/apache/jackrabbit/webdav/property/DavProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/jackrabbit/webdav/property/DavProperty",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 257
    iget-object v1, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->next:Lorg/apache/jackrabbit/webdav/property/DavProperty;

    if-nez v1, :cond_0

    .line 258
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->next:Lorg/apache/jackrabbit/webdav/property/DavProperty;

    .line 261
    .local v0, "ret":Lorg/apache/jackrabbit/webdav/property/DavProperty;, "Lorg/apache/jackrabbit/webdav/property/DavProperty<*>;"
    invoke-direct {p0}, Lorg/apache/jackrabbit/webdav/property/DavPropertySet$PropIter;->seek()V

    .line 262
    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
