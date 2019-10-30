.class public final Lorg/parceler/IdentityCollection;
.super Ljava/lang/Object;
.source "IdentityCollection.java"


# static fields
.field private static final RESERVATION:Ljava/lang/Object;


# instance fields
.field private final values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/parceler/IdentityCollection;->RESERVATION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/parceler/IdentityCollection;->values:Ljava/util/List;

    .line 30
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/parceler/IdentityCollection;->put(Ljava/lang/Object;)I

    .line 31
    return-void
.end method


# virtual methods
.method public containsKey(I)Z
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lorg/parceler/IdentityCollection;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lorg/parceler/IdentityCollection;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)I
    .locals 2
    .param p1, "input"    # Ljava/lang/Object;

    .prologue
    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/parceler/IdentityCollection;->values:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 64
    iget-object v1, p0, Lorg/parceler/IdentityCollection;->values:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 68
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 63
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public isReserved(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lorg/parceler/IdentityCollection;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lorg/parceler/IdentityCollection;->RESERVATION:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;)I
    .locals 1
    .param p1, "input"    # Ljava/lang/Object;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/parceler/IdentityCollection;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object v0, p0, Lorg/parceler/IdentityCollection;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "input"    # Ljava/lang/Object;

    .prologue
    .line 46
    iget-object v0, p0, Lorg/parceler/IdentityCollection;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 47
    iget-object v0, p0, Lorg/parceler/IdentityCollection;->values:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/parceler/IdentityCollection;->values:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 50
    return-void
.end method

.method public reserve()I
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lorg/parceler/IdentityCollection;->RESERVATION:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/parceler/IdentityCollection;->put(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
