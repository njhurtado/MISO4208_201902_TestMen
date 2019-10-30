.class public Lcom/dropbox/core/v2/team/RemovedStatus;
.super Ljava/lang/Object;
.source "RemovedStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;
    }
.end annotation


# instance fields
.field protected final isRecoverable:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isRecoverable"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/RemovedStatus;->isRecoverable:Z

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 50
    if-ne p1, p0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 55
    check-cast v0, Lcom/dropbox/core/v2/team/RemovedStatus;

    .line 56
    .local v0, "other":Lcom/dropbox/core/v2/team/RemovedStatus;
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/RemovedStatus;->isRecoverable:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/RemovedStatus;->isRecoverable:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/RemovedStatus;
    :cond_2
    move v1, v2

    .line 59
    goto :goto_0
.end method

.method public getIsRecoverable()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/RemovedStatus;->isRecoverable:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 42
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/RemovedStatus;->isRecoverable:Z

    .line 43
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 42
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 45
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RemovedStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
