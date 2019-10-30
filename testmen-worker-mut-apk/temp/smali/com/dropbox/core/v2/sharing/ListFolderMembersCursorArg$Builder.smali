.class public Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;
.super Ljava/lang/Object;
.source "ListFolderMembersCursorArg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;"
        }
    .end annotation
.end field

.field protected limit:J


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->actions:Ljava/util/List;

    .line 108
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->limit:J

    .line 109
    return-void
.end method


# virtual methods
.method public build()Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;
    .locals 4

    .prologue
    .line 176
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;

    iget-object v1, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->actions:Ljava/util/List;

    iget-wide v2, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->limit:J

    invoke-direct {v0, v1, v2, v3}, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg;-><init>(Ljava/util/List;J)V

    return-object v0
.end method

.method public withActions(Ljava/util/List;)Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;)",
            "Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberAction;>;"
    if-eqz p1, :cond_1

    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 128
    .local v0, "x":Lcom/dropbox/core/v2/sharing/MemberAction;
    if-nez v0, :cond_0

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'actions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/MemberAction;
    :cond_1
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->actions:Ljava/util/List;

    .line 134
    return-object p0
.end method

.method public withLimit(Ljava/lang/Long;)Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;
    .locals 6
    .param p1, "limit"    # Ljava/lang/Long;

    .prologue
    const-wide/16 v4, 0x3e8

    .line 154
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'limit\' is smaller than 1L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number \'limit\' is larger than 1000L"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_1
    if-eqz p1, :cond_2

    .line 161
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->limit:J

    .line 166
    :goto_0
    return-object p0

    .line 164
    :cond_2
    iput-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFolderMembersCursorArg$Builder;->limit:J

    goto :goto_0
.end method
