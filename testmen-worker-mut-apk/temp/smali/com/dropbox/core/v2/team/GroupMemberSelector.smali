.class Lcom/dropbox/core/v2/team/GroupMemberSelector;
.super Ljava/lang/Object;
.source "GroupMemberSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;
    }
.end annotation


# instance fields
.field protected final group:Lcom/dropbox/core/v2/team/GroupSelector;

.field protected final user:Lcom/dropbox/core/v2/team/UserSelectorArg;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/GroupSelector;Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 2
    .param p1, "group"    # Lcom/dropbox/core/v2/team/GroupSelector;
    .param p2, "user"    # Lcom/dropbox/core/v2/team/UserSelectorArg;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    if-nez p1, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'group\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    .line 44
    if-nez p2, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'user\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 48
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    if-ne p1, p0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 86
    check-cast v0, Lcom/dropbox/core/v2/team/GroupMemberSelector;

    .line 87
    .local v0, "other":Lcom/dropbox/core/v2/team/GroupMemberSelector;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/GroupSelector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 88
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/GroupMemberSelector;
    :cond_4
    move v1, v2

    .line 92
    goto :goto_0
.end method

.method public getGroup()Lcom/dropbox/core/v2/team/GroupSelector;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    return-object v0
.end method

.method public getUser()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 72
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->group:Lcom/dropbox/core/v2/team/GroupSelector;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/team/GroupMemberSelector;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 76
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 110
    sget-object v0, Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/GroupMemberSelector$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
