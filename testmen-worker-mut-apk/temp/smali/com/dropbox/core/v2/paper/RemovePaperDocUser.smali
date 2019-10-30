.class Lcom/dropbox/core/v2/paper/RemovePaperDocUser;
.super Lcom/dropbox/core/v2/paper/RefPaperDoc;
.source "RemovePaperDocUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;
    }
.end annotation


# instance fields
.field protected final member:Lcom/dropbox/core/v2/sharing/MemberSelector;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/v2/sharing/MemberSelector;)V
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .param p2, "member"    # Lcom/dropbox/core/v2/sharing/MemberSelector;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 35
    if-nez p2, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'member\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    if-ne p1, p0, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v1

    .line 74
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 75
    check-cast v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;

    .line 76
    .local v0, "other":Lcom/dropbox/core/v2/paper/RemovePaperDocUser;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->docId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->docId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    .line 77
    invoke-virtual {v3, v4}, Lcom/dropbox/core/v2/sharing/MemberSelector;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/RemovePaperDocUser;
    :cond_4
    move v1, v2

    .line 81
    goto :goto_0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->docId:Ljava/lang/String;

    return-object v0
.end method

.method public getMember()Lcom/dropbox/core/v2/sharing/MemberSelector;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 61
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser;->member:Lcom/dropbox/core/v2/sharing/MemberSelector;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 64
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/paper/RefPaperDoc;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 65
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 87
    sget-object v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/RemovePaperDocUser$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
