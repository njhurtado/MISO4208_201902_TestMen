.class public Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
.super Ljava/lang/Object;
.source "FoldersContainingPaperDoc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;,
        Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;
    }
.end annotation


# instance fields
.field protected final folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

.field protected final folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/Folder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0, v0}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;-><init>(Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;Ljava/util/List;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;Ljava/util/List;)V
    .locals 3
    .param p1, "folderSharingPolicyType"    # Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/Folder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/Folder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    .line 44
    if-eqz p2, :cond_1

    .line 45
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/Folder;

    .line 46
    .local v0, "x":Lcom/dropbox/core/v2/paper/Folder;
    if-nez v0, :cond_0

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'folders\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    .end local v0    # "x":Lcom/dropbox/core/v2/paper/Folder;
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folders:Ljava/util/List;

    .line 52
    return-void
.end method

.method public static newBuilder()Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    if-ne p1, p0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 165
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 166
    check-cast v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;

    .line 167
    .local v0, "other":Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folders:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folders:Ljava/util/List;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folders:Ljava/util/List;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folders:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folders:Ljava/util/List;

    .line 168
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    :cond_4
    move v1, v2

    .line 172
    goto :goto_0
.end method

.method public getFolderSharingPolicyType()Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    return-object v0
.end method

.method public getFolders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folders:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 152
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folders:Ljava/util/List;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 156
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 190
    sget-object v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
