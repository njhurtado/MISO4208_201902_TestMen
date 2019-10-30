.class public Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;
.super Ljava/lang/Object;
.source "TeamSharingPolicies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;
    }
.end annotation


# instance fields
.field protected final sharedFolderJoinPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;

.field protected final sharedFolderMemberPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;

.field protected final sharedLinkCreatePolicy:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;)V
    .locals 2
    .param p1, "sharedFolderMemberPolicy"    # Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;
    .param p2, "sharedFolderJoinPolicy"    # Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;
    .param p3, "sharedLinkCreatePolicy"    # Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'sharedFolderMemberPolicy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderMemberPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;

    .line 46
    if-nez p2, :cond_1

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'sharedFolderJoinPolicy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderJoinPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;

    .line 50
    if-nez p3, :cond_2

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'sharedLinkCreatePolicy\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_2
    iput-object p3, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedLinkCreatePolicy:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    .line 54
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    if-ne p1, p0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return v1

    .line 99
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 100
    check-cast v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;

    .line 101
    .local v0, "other":Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;
    iget-object v3, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderMemberPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderMemberPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderMemberPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderMemberPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderJoinPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderJoinPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderJoinPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderJoinPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;

    .line 102
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedLinkCreatePolicy:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedLinkCreatePolicy:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedLinkCreatePolicy:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    iget-object v4, v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedLinkCreatePolicy:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    .line 103
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;
    :cond_5
    move v1, v2

    .line 107
    goto :goto_0
.end method

.method public getSharedFolderJoinPolicy()Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderJoinPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;

    return-object v0
.end method

.method public getSharedFolderMemberPolicy()Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderMemberPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;

    return-object v0
.end method

.method public getSharedLinkCreatePolicy()Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedLinkCreatePolicy:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 85
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderMemberPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderMemberPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedFolderJoinPolicy:Lcom/dropbox/core/v2/teampolicies/SharedFolderJoinPolicy;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies;->sharedLinkCreatePolicy:Lcom/dropbox/core/v2/teampolicies/SharedLinkCreatePolicy;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 90
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    sget-object v0, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->INSTANCE:Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/teampolicies/TeamSharingPolicies$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
