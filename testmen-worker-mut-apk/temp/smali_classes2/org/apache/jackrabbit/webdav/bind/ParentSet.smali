.class public Lorg/apache/jackrabbit/webdav/bind/ParentSet;
.super Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;
.source "ParentSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty",
        "<",
        "Ljava/util/Collection",
        "<",
        "Lorg/apache/jackrabbit/webdav/bind/ParentElement;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final parents:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/jackrabbit/webdav/bind/ParentElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/jackrabbit/webdav/bind/ParentElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "parents":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/jackrabbit/webdav/bind/ParentElement;>;"
    sget-object v0, Lorg/apache/jackrabbit/webdav/bind/BindConstants;->PARENTSET:Lorg/apache/jackrabbit/webdav/property/DavPropertyName;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/jackrabbit/webdav/property/AbstractDavProperty;-><init>(Lorg/apache/jackrabbit/webdav/property/DavPropertyName;Z)V

    .line 36
    iput-object p1, p0, Lorg/apache/jackrabbit/webdav/bind/ParentSet;->parents:Ljava/util/Collection;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lorg/apache/jackrabbit/webdav/bind/ParentSet;->getValue()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/jackrabbit/webdav/bind/ParentElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lorg/apache/jackrabbit/webdav/bind/ParentSet;->parents:Ljava/util/Collection;

    return-object v0
.end method
