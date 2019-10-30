.class Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$PropertyNameIterator;
.super Ljava/lang/Object;
.source "DavPropertyNameSet.java"

# interfaces
.implements Lorg/apache/jackrabbit/webdav/property/DavPropertyNameIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PropertyNameIterator"
.end annotation


# instance fields
.field private iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lorg/apache/jackrabbit/webdav/property/DavPropertyName;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;


# direct methods
.method private constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V
    .locals 1

    .prologue
    .line 183
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$PropertyNameIterator;->this$0:Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    invoke-static {p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;->access$100(Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$PropertyNameIterator;->iter:Ljava/util/Iterator;

    .line 185
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;
    .param p2, "x1"    # Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$PropertyNameIterator;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$PropertyNameIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 179
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$PropertyNameIterator;->next()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$PropertyNameIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-object v0
.end method

.method public nextPropertyName()Lorg/apache/jackrabbit/webdav/property/DavPropertyName;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$PropertyNameIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/property/DavPropertyNameSet$PropertyNameIterator;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 193
    return-void
.end method
