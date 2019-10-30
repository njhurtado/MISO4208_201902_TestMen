.class Lcom/dropbox/core/v2/sharing/UnshareFolderArg;
.super Ljava/lang/Object;
.source "UnshareFolderArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/UnshareFolderArg$Serializer;
    }
.end annotation


# instance fields
.field protected final leaveACopy:Z

.field protected final sharedFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedFolderId"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;-><init>(Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "sharedFolderId"    # Ljava/lang/String;
    .param p2, "leaveACopy"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'sharedFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    const-string v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'sharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;->sharedFolderId:Ljava/lang/String;

    .line 45
    iput-boolean p2, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;->leaveACopy:Z

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
    check-cast v0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;

    .line 101
    .local v0, "other":Lcom/dropbox/core/v2/sharing/UnshareFolderArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;->sharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;->sharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;->sharedFolderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;->leaveACopy:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;->leaveACopy:Z

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/UnshareFolderArg;
    :cond_4
    move v1, v2

    .line 106
    goto :goto_0
.end method

.method public getLeaveACopy()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;->leaveACopy:Z

    return v0
.end method

.method public getSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;->sharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 86
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;->sharedFolderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg;->leaveACopy:Z

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
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/dropbox/core/v2/sharing/UnshareFolderArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UnshareFolderArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/UnshareFolderArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
