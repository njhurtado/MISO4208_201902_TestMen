.class public Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;
.super Ljava/lang/Object;
.source "ParentFolderAccessInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo$Serializer;
    }
.end annotation


# instance fields
.field protected final folderName:Ljava/lang/String;

.field protected final permissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;"
        }
    .end annotation
.end field

.field protected final sharedFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "sharedFolderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberPermission;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    if-nez p1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'folderName\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->folderName:Ljava/lang/String;

    .line 47
    if-nez p2, :cond_1

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_1
    const-string v1, "[-_0-9a-zA-Z:]+"

    invoke-static {v1, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 51
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_2
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->sharedFolderId:Ljava/lang/String;

    .line 54
    if-nez p3, :cond_3

    .line 55
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'permissions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 57
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberPermission;

    .line 58
    .local v0, "x":Lcom/dropbox/core/v2/sharing/MemberPermission;
    if-nez v0, :cond_4

    .line 59
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'permissions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/MemberPermission;
    :cond_5
    iput-object p3, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->permissions:Ljava/util/List;

    .line 63
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    if-ne p1, p0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 109
    check-cast v0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;

    .line 110
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->folderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->folderName:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->folderName:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->folderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->sharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->sharedFolderId:Ljava/lang/String;

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->permissions:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->permissions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->permissions:Ljava/util/List;

    .line 112
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;
    :cond_5
    move v1, v2

    .line 116
    goto :goto_0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->folderName:Ljava/lang/String;

    return-object v0
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
    .line 89
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->permissions:Ljava/util/List;

    return-object v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 94
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->folderName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->sharedFolderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo;->permissions:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 99
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ParentFolderAccessInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
