.class Lcom/dropbox/core/v2/team/MembersAddArg;
.super Ljava/lang/Object;
.source "MembersAddArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/MembersAddArg$Serializer;
    }
.end annotation


# instance fields
.field protected final forceAsync:Z

.field protected final newMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddArg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddArg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "newMembers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddArg;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/team/MembersAddArg;-><init>(Ljava/util/List;Z)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Z)V
    .locals 3
    .param p2, "forceAsync"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddArg;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "newMembers":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MemberAddArg;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'newMembers\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/team/MemberAddArg;

    .line 39
    .local v0, "x":Lcom/dropbox/core/v2/team/MemberAddArg;
    if-nez v0, :cond_1

    .line 40
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'newMembers\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 43
    .end local v0    # "x":Lcom/dropbox/core/v2/team/MemberAddArg;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/team/MembersAddArg;->newMembers:Ljava/util/List;

    .line 44
    iput-boolean p2, p0, Lcom/dropbox/core/v2/team/MembersAddArg;->forceAsync:Z

    .line 45
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    if-ne p1, p0, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v1

    .line 96
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 97
    check-cast v0, Lcom/dropbox/core/v2/team/MembersAddArg;

    .line 98
    .local v0, "other":Lcom/dropbox/core/v2/team/MembersAddArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddArg;->newMembers:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddArg;->newMembers:Ljava/util/List;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddArg;->newMembers:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/team/MembersAddArg;->newMembers:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MembersAddArg;->forceAsync:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/MembersAddArg;->forceAsync:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/MembersAddArg;
    :cond_4
    move v1, v2

    .line 103
    goto :goto_0
.end method

.method public getForceAsync()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/MembersAddArg;->forceAsync:Z

    return v0
.end method

.method public getNewMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/team/MemberAddArg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dropbox/core/v2/team/MembersAddArg;->newMembers:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 83
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/team/MembersAddArg;->newMembers:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/MembersAddArg;->forceAsync:Z

    .line 85
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 83
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 87
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersAddArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Lcom/dropbox/core/v2/team/MembersAddArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MembersAddArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/MembersAddArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
