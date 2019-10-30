.class public Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;
.super Ljava/lang/Object;
.source "ListFileMembersCountResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;
    }
.end annotation


# instance fields
.field protected final memberCount:J

.field protected final members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/SharedFileMembers;J)V
    .locals 2
    .param p1, "members"    # Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .param p2, "memberCount"    # J

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'members\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    .line 38
    iput-wide p2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 71
    if-ne p1, p0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 75
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 76
    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;

    .line 77
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/SharedFileMembers;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;
    :cond_4
    move v1, v2

    .line 82
    goto :goto_0
.end method

.method public getMemberCount()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    return-wide v0
.end method

.method public getMembers()Lcom/dropbox/core/v2/sharing/SharedFileMembers;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 62
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->members:Lcom/dropbox/core/v2/sharing/SharedFileMembers;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult;->memberCount:J

    .line 64
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 62
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 66
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 88
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersCountResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
