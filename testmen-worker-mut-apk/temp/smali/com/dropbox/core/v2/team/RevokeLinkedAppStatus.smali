.class public Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;
.super Ljava/lang/Object;
.source "RevokeLinkedAppStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;
    }
.end annotation


# instance fields
.field protected final errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

.field protected final success:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;-><init>(ZLcom/dropbox/core/v2/team/RevokeLinkedAppError;)V

    .line 43
    return-void
.end method

.method public constructor <init>(ZLcom/dropbox/core/v2/team/RevokeLinkedAppError;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "errorType"    # Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    .line 31
    iput-object p2, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 74
    if-ne p1, p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 79
    check-cast v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;

    .line 80
    .local v0, "other":Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    .line 81
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/RevokeLinkedAppError;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;
    :cond_3
    move v1, v2

    .line 85
    goto :goto_0
.end method

.method public getErrorType()Lcom/dropbox/core/v2/team/RevokeLinkedAppError;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    return-object v0
.end method

.method public getSuccess()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 65
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->success:Z

    .line 66
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus;->errorType:Lcom/dropbox/core/v2/team/RevokeLinkedAppError;

    aput-object v3, v1, v2

    .line 65
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 69
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeLinkedAppStatus$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
