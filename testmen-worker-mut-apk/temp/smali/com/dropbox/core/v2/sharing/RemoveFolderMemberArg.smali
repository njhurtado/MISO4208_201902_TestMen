.class Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;
.super Ljava/lang/Object;
.source "RemoveFolderMemberArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg$Serializer;
    }
.end annotation


# instance fields
.field protected final leaveACopy:Z

.field protected final member:Lcom/dropbox/core/v2/sharing/MemberSelector;

.field protected final sharedFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Z)V
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .param p2, "member"    # Lcom/dropbox/core/v2/sharing/MemberSelector;
    .param p3, "leaveACopy"    # Z

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-nez p1, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    const-string v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    .line 48
    if-nez p2, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'member\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 52
    iput-boolean p3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->leaveACopy:Z

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 96
    if-ne p1, p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 100
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 101
    check-cast v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;

    .line 102
    .local v0, "other":Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 103
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/MemberSelector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->leaveACopy:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->leaveACopy:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;
    :cond_5
    move v1, v2

    .line 108
    goto :goto_0
.end method

.method public getLeaveACopy()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->leaveACopy:Z

    return v0
.end method

.method public getMember()Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-object v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 86
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg;->leaveACopy:Z

    .line 89
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 86
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 91
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    sget-object v0, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/RemoveFolderMemberArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
