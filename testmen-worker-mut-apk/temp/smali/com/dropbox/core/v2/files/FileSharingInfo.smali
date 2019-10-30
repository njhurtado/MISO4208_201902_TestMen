.class public Lcom/dropbox/core/v2/files/FileSharingInfo;
.super Lcom/dropbox/core/v2/files/SharingInfo;
.source "FileSharingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;
    }
.end annotation


# instance fields
.field protected final modifiedBy:Ljava/lang/String;

.field protected final parentSharedFolderId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .param p1, "readOnly"    # Z
    .param p2, "parentSharedFolderId"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/dropbox/core/v2/files/FileSharingInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "readOnly"    # Z
    .param p2, "parentSharedFolderId"    # Ljava/lang/String;
    .param p3, "modifiedBy"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x28

    .line 43
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/files/SharingInfo;-><init>(Z)V

    .line 44
    if-nez p2, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'parentSharedFolderId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    const-string v0, "[-_0-9a-zA-Z:]+"

    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'parentSharedFolderId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/files/FileSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    .line 51
    if-eqz p3, :cond_3

    .line 52
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'modifiedBy\' is shorter than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_3

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'modifiedBy\' is longer than 40"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_3
    iput-object p3, p0, Lcom/dropbox/core/v2/files/FileSharingInfo;->modifiedBy:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    if-ne p1, p0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return v1

    .line 123
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 124
    check-cast v0, Lcom/dropbox/core/v2/files/FileSharingInfo;

    .line 125
    .local v0, "other":Lcom/dropbox/core/v2/files/FileSharingInfo;
    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/FileSharingInfo;->readOnly:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/files/FileSharingInfo;->readOnly:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileSharingInfo;->modifiedBy:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileSharingInfo;->modifiedBy:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileSharingInfo;->modifiedBy:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileSharingInfo;->modifiedBy:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/files/FileSharingInfo;->modifiedBy:Ljava/lang/String;

    .line 127
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/files/FileSharingInfo;
    :cond_4
    move v1, v2

    .line 131
    goto :goto_0
.end method

.method public getModifiedBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileSharingInfo;->modifiedBy:Ljava/lang/String;

    return-object v0
.end method

.method public getParentSharedFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/dropbox/core/v2/files/FileSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/dropbox/core/v2/files/FileSharingInfo;->readOnly:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 109
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileSharingInfo;->parentSharedFolderId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/files/FileSharingInfo;->modifiedBy:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 113
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/files/SharingInfo;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 114
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/files/FileSharingInfo$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
