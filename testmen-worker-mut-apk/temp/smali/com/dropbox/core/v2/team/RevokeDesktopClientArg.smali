.class public Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
.super Lcom/dropbox/core/v2/team/DeviceSessionArg;
.source "RevokeDesktopClientArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;
    }
.end annotation


# instance fields
.field protected final deleteOnUnlink:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "teamMemberId"    # Ljava/lang/String;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "teamMemberId"    # Ljava/lang/String;
    .param p3, "deleteOnUnlink"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/dropbox/core/v2/team/DeviceSessionArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->deleteOnUnlink:Z

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    if-ne p1, p0, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v1

    .line 101
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 102
    check-cast v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;

    .line 103
    .local v0, "other":Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->sessionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->sessionId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->sessionId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->teamMemberId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->teamMemberId:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->teamMemberId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->teamMemberId:Ljava/lang/String;

    .line 104
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->deleteOnUnlink:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->deleteOnUnlink:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;
    :cond_5
    move v1, v2

    .line 109
    goto :goto_0
.end method

.method public getDeleteOnUnlink()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->deleteOnUnlink:Z

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 88
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg;->deleteOnUnlink:Z

    .line 89
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 88
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 91
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/team/DeviceSessionArg;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 92
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeDesktopClientArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
