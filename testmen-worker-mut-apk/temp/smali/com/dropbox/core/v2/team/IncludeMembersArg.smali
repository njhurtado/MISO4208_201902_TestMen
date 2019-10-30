.class Lcom/dropbox/core/v2/team/IncludeMembersArg;
.super Ljava/lang/Object;
.source "IncludeMembersArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/team/IncludeMembersArg$Serializer;
    }
.end annotation


# instance fields
.field protected final returnMembers:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/dropbox/core/v2/team/IncludeMembersArg;-><init>(Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "returnMembers"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean p1, p0, Lcom/dropbox/core/v2/team/IncludeMembersArg;->returnMembers:Z

    .line 31
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-ne p1, p0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/dropbox/core/v2/team/IncludeMembersArg;

    .line 70
    .local v0, "other":Lcom/dropbox/core/v2/team/IncludeMembersArg;
    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/IncludeMembersArg;->returnMembers:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/team/IncludeMembersArg;->returnMembers:Z

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/team/IncludeMembersArg;
    :cond_2
    move v1, v2

    .line 73
    goto :goto_0
.end method

.method public getReturnMembers()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/dropbox/core/v2/team/IncludeMembersArg;->returnMembers:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 56
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/dropbox/core/v2/team/IncludeMembersArg;->returnMembers:Z

    .line 57
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 56
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 59
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    sget-object v0, Lcom/dropbox/core/v2/team/IncludeMembersArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/IncludeMembersArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/IncludeMembersArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/dropbox/core/v2/team/IncludeMembersArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/IncludeMembersArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/team/IncludeMembersArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
