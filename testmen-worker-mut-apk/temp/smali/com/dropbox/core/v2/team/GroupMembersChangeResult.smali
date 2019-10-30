.class public Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
.super Ljava/lang/Object;
.source "GroupMembersChangeResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupMembersChangeResult$Serializer;
    }
.end annotation


# instance fields
.field protected final asyncJobId:Ljava/lang/String;

.field protected final groupInfo:Lcom/dropbox/core/v2/team/GroupFullInfo;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupFullInfo;Ljava/lang/String;)V
    .locals 2
    .param p1, "groupInfo"    # Lcom/dropbox/core/v2/team/GroupFullInfo;
    .param p2, "asyncJobId"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'groupInfo\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->groupInfo:Lcom/dropbox/core/v2/team/GroupFullInfo;

    .line 50
    if-nez p2, :cond_1

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'asyncJobId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'asyncJobId\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->asyncJobId:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-ne p1, p0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 93
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 94
    check-cast v0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;

    .line 95
    .local v0, "other":Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->groupInfo:Lcom/dropbox/core/v2/team/GroupFullInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->groupInfo:Lcom/dropbox/core/v2/team/GroupFullInfo;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->groupInfo:Lcom/dropbox/core/v2/team/GroupFullInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->groupInfo:Lcom/dropbox/core/v2/team/GroupFullInfo;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/GroupFullInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->asyncJobId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->asyncJobId:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->asyncJobId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->asyncJobId:Ljava/lang/String;

    .line 96
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/GroupMembersChangeResult;
    :cond_4
    move v1, v2

    .line 100
    goto :goto_0
.end method

.method public getAsyncJobId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->asyncJobId:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupInfo()Lcom/dropbox/core/v2/team/GroupFullInfo;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->groupInfo:Lcom/dropbox/core/v2/team/GroupFullInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 80
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->groupInfo:Lcom/dropbox/core/v2/team/GroupFullInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult;->asyncJobId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 84
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersChangeResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersChangeResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMembersChangeResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMembersChangeResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMembersChangeResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
