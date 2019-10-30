.class public Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;
.super Lcom/dropbox/core/v2/sharing/MembershipInfo;
.source "GroupMembershipInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;,
        Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;
    }
.end annotation


# instance fields
.field protected final group:Lcom/dropbox/core/v2/sharing/GroupInfo;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/GroupInfo;)V
    .locals 6
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "group"    # Lcom/dropbox/core/v2/sharing/GroupInfo;

    .prologue
    const/4 v3, 0x0

    .line 68
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/GroupInfo;Ljava/util/List;Ljava/lang/String;Z)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/GroupInfo;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p2, "group"    # Lcom/dropbox/core/v2/sharing/GroupInfo;
    .param p4, "initials"    # Ljava/lang/String;
    .param p5, "isInherited"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/sharing/AccessLevel;",
            "Lcom/dropbox/core/v2/sharing/GroupInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/dropbox/core/v2/sharing/MembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/util/List;Ljava/lang/String;Z)V

    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'group\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->group:Lcom/dropbox/core/v2/sharing/GroupInfo;

    .line 52
    return-void
.end method

.method public static newBuilder(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/GroupInfo;)Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;
    .locals 1
    .param p0, "accessType"    # Lcom/dropbox/core/v2/sharing/AccessLevel;
    .param p1, "group"    # Lcom/dropbox/core/v2/sharing/GroupInfo;

    .prologue
    .line 132
    new-instance v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Builder;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/GroupInfo;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 216
    if-ne p1, p0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v1

    .line 220
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v0, p1

    .line 221
    check-cast v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;

    .line 222
    .local v0, "other":Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->group:Lcom/dropbox/core/v2/sharing/GroupInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->group:Lcom/dropbox/core/v2/sharing/GroupInfo;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->group:Lcom/dropbox/core/v2/sharing/GroupInfo;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->group:Lcom/dropbox/core/v2/sharing/GroupInfo;

    .line 223
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/GroupInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->permissions:Ljava/util/List;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->permissions:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->permissions:Ljava/util/List;

    .line 224
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->initials:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->initials:Ljava/lang/String;

    if-eq v3, v4, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->initials:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->initials:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->initials:Ljava/lang/String;

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->isInherited:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->isInherited:Z

    if-eq v3, v4, :cond_0

    :cond_6
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;
    :cond_7
    move v1, v2

    .line 230
    goto :goto_0
.end method

.method public getAccessType()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getGroup()Lcom/dropbox/core/v2/sharing/GroupInfo;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->group:Lcom/dropbox/core/v2/sharing/GroupInfo;

    return-object v0
.end method

.method public getInitials()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->initials:Ljava/lang/String;

    return-object v0
.end method

.method public getIsInherited()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->isInherited:Z

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
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 207
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;->group:Lcom/dropbox/core/v2/sharing/GroupInfo;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 210
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/sharing/MembershipInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 211
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 236
    sget-object v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
