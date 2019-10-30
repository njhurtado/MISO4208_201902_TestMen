.class public Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;
.super Ljava/lang/Object;
.source "AddPaperDocUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/AddPaperDocUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected customMessage:Ljava/lang/String;

.field protected final docId:Ljava/lang/String;

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

.field protected quiet:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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
    .line 142
    .local p2, "members":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/AddMember;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    if-nez p1, :cond_0

    .line 144
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'docId\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->docId:Ljava/lang/String;

    .line 147
    if-nez p2, :cond_1

    .line 148
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'members\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    .line 151
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "List \'members\' has more than 20 items"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/paper/AddMember;

    .line 154
    .local v0, "x":Lcom/dropbox/core/v2/paper/AddMember;
    if-nez v0, :cond_3

    .line 155
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'members\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 158
    .end local v0    # "x":Lcom/dropbox/core/v2/paper/AddMember;
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->members:Ljava/util/List;

    .line 159
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->customMessage:Ljava/lang/String;

    .line 160
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->quiet:Z

    .line 161
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/paper/AddPaperDocUser;
    .locals 5

    .prologue
    .line 205
    new-instance v0, Lcom/dropbox/core/v2/paper/AddPaperDocUser;

    iget-object v1, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->docId:Ljava/lang/String;

    iget-object v2, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->members:Ljava/util/List;

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->customMessage:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->quiet:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dropbox/core/v2/paper/AddPaperDocUser;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public withCustomMessage(Ljava/lang/String;)Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;
    .locals 0
    .param p1, "customMessage"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->customMessage:Ljava/lang/String;

    .line 173
    return-object p0
.end method

.method public withQuiet(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;
    .locals 1
    .param p1, "quiet"    # Ljava/lang/Boolean;

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->quiet:Z

    .line 195
    :goto_0
    return-object p0

    .line 193
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/paper/AddPaperDocUser$Builder;->quiet:Z

    goto :goto_0
.end method
