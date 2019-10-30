.class Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
.super Ljava/lang/Object;
.source "ListFileMembersArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;,
        Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;
    }
.end annotation


# instance fields
.field protected final actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;"
        }
    .end annotation
.end field

.field protected final file:Ljava/lang/String;

.field protected final includeInherited:Z

.field protected final limit:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 95
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x64

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;-><init>(Ljava/lang/String;Ljava/util/List;ZJ)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZJ)V
    .locals 4
    .param p1, "file"    # Ljava/lang/String;
    .param p3, "includeInherited"    # Z
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;ZJ)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "actions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    if-nez p1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value for \'file\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'file\' is shorter than 1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 59
    :cond_1
    const-string v1, "((/|id:).*|nspath:[0-9]+:.*)|ns:[0-9]+(/.*)?"

    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 60
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "String \'file\' does not match pattern"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 62
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    .line 63
    if-eqz p2, :cond_4

    .line 64
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dropbox/core/v2/sharing/MemberAction;

    .line 65
    .local v0, "x":Lcom/dropbox/core/v2/sharing/MemberAction;
    if-nez v0, :cond_3

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "An item in list \'actions\' is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    .end local v0    # "x":Lcom/dropbox/core/v2/sharing/MemberAction;
    :cond_4
    iput-object p2, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    .line 71
    iput-boolean p3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->includeInherited:Z

    .line 72
    const-wide/16 v2, 0x1

    cmp-long v1, p4, v2

    if-gez v1, :cond_5

    .line 73
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'limit\' is smaller than 1L"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_5
    const-wide/16 v2, 0x12c

    cmp-long v1, p4, v2

    if-lez v1, :cond_6

    .line 76
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number \'limit\' is larger than 300L"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_6
    iput-wide p4, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->limit:J

    .line 79
    return-void
.end method

.method public static newBuilder(Ljava/lang/String;)Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;
    .locals 1
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;

    invoke-direct {v0, p0}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 282
    if-ne p1, p0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v1

    .line 286
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v0, p1

    .line 287
    check-cast v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;

    .line 288
    .local v0, "other":Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    iget-object v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    .line 289
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->includeInherited:Z

    iget-boolean v4, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->includeInherited:Z

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->limit:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->limit:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/sharing/ListFileMembersArg;
    :cond_5
    move v1, v2

    .line 295
    goto :goto_0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dropbox/core/v2/sharing/MemberAction;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeInherited()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->includeInherited:Z

    return v0
.end method

.method public getLimit()J
    .locals 2

    .prologue
    .line 135
    iget-wide v0, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->limit:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 271
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->file:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->actions:Ljava/util/List;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->includeInherited:Z

    .line 274
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v4, p0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg;->limit:J

    .line 275
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 271
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 277
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 301
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/sharing/ListFileMembersArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
