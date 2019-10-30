.class public Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;
.super Ljava/lang/Object;
.source "RevokeLinkedApiAppArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg$Serializer;
    }
.end annotation


# instance fields
.field protected final appId:Ljava/lang/String;

.field protected final keepAppFolder:Z

.field protected final teamMemberId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "teamMemberId"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "teamMemberId"    # Ljava/lang/String;
    .param p3, "keepAppFolder"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'appId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->appId:Ljava/lang/String;

    .line 41
    if-nez p2, :cond_1

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'teamMemberId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->teamMemberId:Ljava/lang/String;

    .line 45
    iput-boolean p3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->keepAppFolder:Z

    .line 46
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-ne p1, p0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v1

    .line 109
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 110
    check-cast v0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;

    .line 111
    .local v0, "other":Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->appId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->appId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->appId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->appId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->teamMemberId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->teamMemberId:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->teamMemberId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->teamMemberId:Ljava/lang/String;

    .line 112
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->keepAppFolder:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->keepAppFolder:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;
    :cond_5
    move v1, v2

    .line 117
    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getKeepAppFolder()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->keepAppFolder:Z

    return v0
.end method

.method public getTeamMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->teamMemberId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 95
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->appId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->teamMemberId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg;->keepAppFolder:Z

    .line 98
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 95
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 100
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/RevokeLinkedApiAppArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
