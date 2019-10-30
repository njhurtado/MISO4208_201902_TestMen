.class Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;
.super Ljava/lang/Object;
.source "UpdateFolderMemberArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;
    }
.end annotation


# instance fields
.field protected final accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

.field protected final member:Lcom/dropbox/core/v2/sharing/MemberSelector;

.field protected final sharedFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;Lcom/dropbox/core/v2/sharing/AccessLevel;)V
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .param p2, "member"    # Lcom/dropbox/core/v2/sharing/MemberSelector;
    .param p3, "accessLevel"    # Lcom/dropbox/core/v2/sharing/AccessLevel;

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
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    .line 48
    if-nez p2, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'member\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 52
    if-nez p3, :cond_3

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'accessLevel\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_3
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 56
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    if-ne p1, p0, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v1

    .line 103
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 104
    check-cast v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;

    .line 105
    .local v0, "other":Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 106
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/MemberSelector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    .line 107
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/AccessLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;
    :cond_5
    move v1, v2

    .line 111
    goto :goto_0
.end method

.method public getAccessLevel()Lcom/dropbox/core/v2/sharing/AccessLevel;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    return-object v0
.end method

.method public getMember()Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-object v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 89
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->sharedFolderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg;->accessLevel:Lcom/dropbox/core/v2/sharing/AccessLevel;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 94
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UpdateFolderMemberArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
