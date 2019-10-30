.class public Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
.super Ljava/lang/Object;
.source "SharedFolderMembers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;
    }
.end annotation


# instance fields
.field protected final cursor:Ljava/lang/String;

.field protected final groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final invitees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/UserMembershipInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/UserMembershipInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/UserMembershipInfo;>;"
    .local p2, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;>;"
    .local p3, "invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p4, "cursor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/UserMembershipInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/UserMembershipInfo;>;"
    .local p2, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;>;"
    .local p3, "invitees":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'users\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;

    .line 52
    .local v0, "x":Lcom/dropbox/core/v2/sharing/UserMembershipInfo;
    if-nez v0, :cond_1

    .line 53
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'users\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/UserMembershipInfo;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    .line 57
    if-nez p2, :cond_3

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'groups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;

    .line 61
    .local v0, "x":Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;
    if-nez v0, :cond_4

    .line 62
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'groups\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;
    :cond_5
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    .line 66
    if-nez p3, :cond_6

    .line 67
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'invitees\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :cond_6
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;

    .line 70
    .local v0, "x":Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;
    if-nez v0, :cond_7

    .line 71
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'invitees\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 74
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;
    :cond_8
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    .line 75
    iput-object p4, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    .line 76
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    if-ne p1, p0, :cond_1

    .line 162
    :cond_0
    :goto_0
    return v1

    .line 153
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 154
    check-cast v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;

    .line 155
    .local v0, "other":Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    .line 156
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    .line 157
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    .line 158
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/SharedFolderMembers;
    :cond_6
    move v1, v2

    .line 162
    goto :goto_0
.end method

.method public getCursor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    return-object v0
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/GroupMembershipInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getInvitees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/InviteeMembershipInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/UserMembershipInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 138
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->users:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->groups:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->invitees:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers;->cursor:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 144
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 180
    sget-object v0, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/SharedFolderMembers$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
