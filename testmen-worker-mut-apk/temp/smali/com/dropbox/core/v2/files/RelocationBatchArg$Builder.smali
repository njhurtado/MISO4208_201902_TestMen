.class public Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
.super Ljava/lang/Object;
.source "RelocationBatchArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/files/RelocationBatchArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected allowSharedFolder:Z

.field protected autorename:Z

.field protected final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/files/RelocationPath;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/files/RelocationPath;>;"
    const/4 v3, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    if-nez p1, :cond_0

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'entries\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/files/RelocationPath;

    .line 140
    .local v0, "x":Lcom/dropbox/core/v2/files/RelocationPath;
    if-nez v0, :cond_1

    .line 141
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'entries\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    .end local v0    # "x":Lcom/dropbox/core/v2/files/RelocationPath;
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->entries:Ljava/util/List;

    .line 145
    iput-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowSharedFolder:Z

    .line 146
    iput-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->autorename:Z

    .line 147
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/files/RelocationBatchArg;
    .locals 4

    .prologue
    .line 205
    new-instance v0, Lcom/dropbox/core/v2/files/RelocationBatchArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->entries:Ljava/util/List;

    iget-boolean v2, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowSharedFolder:Z

    iget-boolean v3, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->autorename:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/files/RelocationBatchArg;-><init>(Ljava/util/List;ZZ)V

    return-object v0
.end method

.method public withAllowSharedFolder(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
    .locals 1
    .param p1, "allowSharedFolder"    # Ljava/lang/Boolean;

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowSharedFolder:Z

    .line 173
    :goto_0
    return-object p0

    .line 171
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->allowSharedFolder:Z

    goto :goto_0
.end method

.method public withAutorename(Ljava/lang/Boolean;)Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;
    .locals 1
    .param p1, "autorename"    # Ljava/lang/Boolean;

    .prologue
    .line 189
    if-eqz p1, :cond_0

    .line 190
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->autorename:Z

    .line 195
    :goto_0
    return-object p0

    .line 193
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dropbox/core/v2/files/RelocationBatchArg$Builder;->autorename:Z

    goto :goto_0
.end method
