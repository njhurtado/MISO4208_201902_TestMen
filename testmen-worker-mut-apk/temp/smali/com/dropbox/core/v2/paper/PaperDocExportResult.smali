.class public Lcom/dropbox/core/v2/paper/PaperDocExportResult;
.super Ljava/lang/Object;
.source "PaperDocExportResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;
    }
.end annotation


# instance fields
.field protected final mimeType:Ljava/lang/String;

.field protected final owner:Ljava/lang/String;

.field protected final revision:J

.field protected final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "revision"    # J
    .param p5, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'owner\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    .line 43
    if-nez p2, :cond_1

    .line 44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'title\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_1
    iput-object p2, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    .line 47
    iput-wide p3, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->revision:J

    .line 48
    if-nez p5, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'mimeType\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    iput-object p5, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    .line 52
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    if-ne p1, p0, :cond_1

    .line 117
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
    check-cast v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;

    .line 110
    .local v0, "other":Lcom/dropbox/core/v2/paper/PaperDocExportResult;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    iget-wide v4, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->revision:J

    iget-wide v6, v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->revision:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/PaperDocExportResult;
    :cond_5
    move v1, v2

    .line 117
    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public getRevision()J
    .locals 2

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->revision:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 93
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->owner:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->title:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-wide v4, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->revision:J

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/PaperDocExportResult;->mimeType:Ljava/lang/String;

    aput-object v3, v1, v2

    .line 93
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 99
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    sget-object v0, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/PaperDocExportResult$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
