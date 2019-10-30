.class public Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;
.super Lcom/dropbox/core/v2/sharing/MembershipInfo;
.source "InviteeMembershipInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;,
        Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;
    }
.end annotation


# instance fields
.field protected final invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

.field protected final user:Lcom/dropbox/core/v2/sharing/UserInfo;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/InviteeInfo;)V
    .locals 7
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "invitee"    # Lcom/dropbox/core/v2/sharing/InviteeInfo;

    .prologue
    const/4 v3, 0x0

    .line 69
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/InviteeInfo;Ljava/util/List;Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/UserInfo;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/InviteeInfo;Ljava/util/List;Ljava/lang/String;ZLcom/dropbox/core/v2/sharing/UserInfo;)V
    .locals 2
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "invitee"    # Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .param p4, "initials"    # Ljava/lang/String;
    .param p5, "isInherited"    # Z
    .param p6, "user"    # Lcom/dropbox/core/v2/sharing/UserInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "Lcom/dropbox/core/v2/sharing/InviteeInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/dropbox/core/v2/sharing/UserInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/dropbox/core/v2/sharing/MembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/util/List;Ljava/lang/String;Z)V

    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'invitee\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    .line 53
    iput-object p6, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    .line 54
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/InviteeInfo;)Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;
    .locals 1
    .param p0, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p1, "invitee"    # Lcom/dropbox/core/v2/sharing/InviteeInfo;

    .prologue
    .line 141
    new-instance v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/InviteeInfo;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    if-ne p1, p0, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 245
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 246
    check-cast v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;

    .line 247
    .local v0, "other":Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    .line 248
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/InviteeInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    .line 249
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    .line 250
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->isInherited:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->isInherited:Z

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    .line 252
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/UserInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;
    :cond_7
    move v1, v2

    .line 256
    goto :goto_0
.end method

.method public getAccessType()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getInitials()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->initials:Ljava/lang/String;

    return-object v0
.end method

.method public getInvitee()Lcom/dropbox/core/v2/sharing/InviteeInfo;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    return-object v0
.end method

.method public getIsInherited()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->isInherited:Z

    return v0
.end method

.method public getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getUser()Lcom/dropbox/core/v2/sharing/UserInfo;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 231
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->invitee:Lcom/dropbox/core/v2/sharing/InviteeInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 235
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/MembershipInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 236
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
