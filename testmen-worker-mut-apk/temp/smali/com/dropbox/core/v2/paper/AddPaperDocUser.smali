.class Lcom/dropbox/core/v2/paper/AddPaperDocUser;
.super Lcom/dropbox/core/v2/paper/RefPaperDoc;
.source "AddPaperDocUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;,
        Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;
    }
.end annotation


# instance fields
.field protected final customMessage:Ljava/lang/String;

.field protected final members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;"
        }
    .end annotation
.end field

.field protected final quiet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/AddMember;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "docId"    # Ljava/lang/String;
    .param p3, "customMessage"    # Ljava/lang/String;
    .param p4, "quiet"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/AddMember;>;"
    invoke-direct {p0, p1}, Lcom/dropbox/core/v2/paper/RefPaperDoc;-><init>(Ljava/lang/String;)V

    .line 44
    if-nez p2, :cond_0

    .line 45
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'members\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "List \'members\' has more than 20 items"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/AddMember;

    .line 51
    .local v0, "x":Lcom/dropbox/core/v2/paper/AddMember;
    if-nez v0, :cond_2

    .line 52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'members\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    .end local v0    # "x":Lcom/dropbox/core/v2/paper/AddMember;
    :cond_3
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    .line 56
    iput-object p3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    .line 57
    iput-boolean p4, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->quiet:Z

    .line 58
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;Ljava/util/List;)Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;
    .locals 1
    .param p0, "docId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;)",
            "Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/AddMember;>;"
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;

    invoke-direct {v0, p0, p1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 222
    if-ne p1, p0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 226
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v0, p1

    .line 227
    check-cast v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;

    .line 228
    .local v0, "other":Lcom/dropbox/core/v2/paper/AddPaperDocUser;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->docId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->docId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->docId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    .line 229
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-boolean v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->quiet:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->quiet:Z

    if-eq v3, v4, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/AddPaperDocUser;
    :cond_6
    move v1, v2

    .line 235
    goto :goto_0
.end method

.method public getCustomMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->docId:Ljava/lang/String;

    return-object v0
.end method

.method public getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/paper/AddMember;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    return-object v0
.end method

.method public getQuiet()Z
    .locals 1

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->quiet:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 211
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->members:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->customMessage:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;->quiet:Z

    .line 214
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 211
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 216
    .local v0, "hash":I
    invoke-super {p0}, Lcom/dropbox/core/v2/paper/RefPaperDoc;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    .line 217
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    sget-object v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
