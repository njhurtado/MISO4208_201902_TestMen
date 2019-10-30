.class Lcom/dropbox/core/v2/team/MembersDeactivateArg;
.super Ljava/lang/Object;
.source "MembersDeactivateArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersDeactivateArg$Serializer;
    }
.end annotation


# instance fields
.field protected final user:Lcom/dropbox/core/v2/team/UserSelectorArg;

.field protected final wipeData:Z


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;)V
    .locals 1
    .param p1, "user"    # Lcom/dropbox/core/v2/team/UserSelectorArg;

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/team/MembersDeactivateArg;-><init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V

    .line 62
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/team/UserSelectorArg;Z)V
    .locals 2
    .param p1, "user"    # Lcom/dropbox/core/v2/team/UserSelectorArg;
    .param p2, "wipeData"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'user\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    .line 45
    iput-boolean p2, p0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;->wipeData:Z

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

    .line 95
    if-ne p1, p0, :cond_1

    .line 106
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

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 100
    check-cast v0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;

    .line 101
    .local v0, "other":Lcom/dropbox/core/v2/team/MembersDeactivateArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/team/UserSelectorArg;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;->wipeData:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;->wipeData:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/MembersDeactivateArg;
    :cond_4
    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public getUser()Lcom/dropbox/core/v2/team/UserSelectorArg;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    return-object v0
.end method

.method public getWipeData()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;->wipeData:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 86
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;->user:Lcom/dropbox/core/v2/team/UserSelectorArg;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MembersDeactivateArg;->wipeData:Z

    .line 88
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 86
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 90
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/dropbox/core/v2/team/MembersDeactivateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersDeactivateArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersDeactivateArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/dropbox/core/v2/team/MembersDeactivateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersDeactivateArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersDeactivateArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
