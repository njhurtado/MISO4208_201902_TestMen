.class public Lcom/dropbox/core/v2/files/PathRootError;
.super Ljava/lang/Object;
.source "PathRootError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/PathRootError$Serializer;
    }
.end annotation


# instance fields
.field protected final pathRoot:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/dropbox/core/v2/files/PathRootError;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pathRoot"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/dropbox/core/v2/files/PathRootError;->pathRoot:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 61
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 65
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 66
    check-cast v0, Lcom/dropbox/core/v2/files/PathRootError;

    .line 67
    .local v0, "other":Lcom/dropbox/core/v2/files/PathRootError;
    iget-object v3, p0, Lcom/dropbox/core/v2/files/PathRootError;->pathRoot:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PathRootError;->pathRoot:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PathRootError;->pathRoot:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PathRootError;->pathRoot:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/PathRootError;->pathRoot:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getPathRoot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/dropbox/core/v2/files/PathRootError;->pathRoot:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 53
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/PathRootError;->pathRoot:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 56
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    sget-object v0, Lcom/dropbox/core/v2/files/PathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PathRootError$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/PathRootError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/dropbox/core/v2/files/PathRootError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/PathRootError$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/PathRootError$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
