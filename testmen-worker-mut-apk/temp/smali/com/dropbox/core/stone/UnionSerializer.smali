.class public abstract Lcom/dropbox/core/stone/UnionSerializer;
.super Lcom/dropbox/core/stone/CompositeSerializer;
.source "UnionSerializer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/stone/CompositeSerializer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    .local p0, "this":Lcom/dropbox/core/stone/UnionSerializer;, "Lcom/dropbox/core/stone/UnionSerializer<TT;>;"
    invoke-direct {p0}, Lcom/dropbox/core/stone/CompositeSerializer;-><init>()V

    return-void
.end method
