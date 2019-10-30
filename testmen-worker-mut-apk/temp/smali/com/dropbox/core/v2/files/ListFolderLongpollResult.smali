.class public Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
.super Ljava/lang/Object;
.source "ListFolderLongpollResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;
    }
.end annotation


# instance fields
.field protected final backoff:Ljava/lang/Long;

.field protected final changes:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "changes"    # Z

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;-><init>(ZLjava/lang/Long;)V

    .line 49
    return-void
.end method

.method public constructor <init>(ZLjava/lang/Long;)V
    .locals 0
    .param p1, "changes"    # Z
    .param p2, "backoff"    # Ljava/lang/Long;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean p1, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    .line 35
    iput-object p2, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p1, p0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;

    .line 88
    .local v0, "other":Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/ListFolderLongpollResult;
    :cond_3
    move v1, v2

    .line 93
    goto :goto_0
.end method

.method public getBackoff()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    return-object v0
.end method

.method public getChanges()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 73
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->changes:Z

    .line 74
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult;->backoff:Ljava/lang/Long;

    aput-object v3, v1, v2

    .line 73
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 77
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/ListFolderLongpollResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
